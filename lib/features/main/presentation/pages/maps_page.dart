import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/app_bar_widget.dart';
import 'package:eco_hero_mobile/features/main/presentation/widgets/navigation_bar_widget.dart';
import 'package:eco_hero_mobile/features/maps/data/models/location_model.dart';
import 'package:eco_hero_mobile/features/maps/presentation/blocs/locations_bloc.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  late final MapController _controller;

  TileLayer get openStreetMapTileLayer => TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'me.opkarol.eco_hero_mobile',
      );

  @override
  void initState() {
    _controller = MapController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(),
      body: SafeArea(
        child: BlocBuilder<CurrentUserBloc, CurrentUserState>(
            builder: (context, state) {
          if (state is CurrentUserLoadSuccess) {
            UserModel user = state.user;
            return BlocBuilder<LocationsBloc, LocationsState>(
                builder: (context, state) {
              if (state is LocationsLoadSuccess) {
                List<LocationModel> locations = state.locations;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      AppBarWidget(user: user),
                      SizedBox(height: 0.5.h),
                      Divider(color: shadow),
                      SizedBox(height: 2.5.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text(
                            'Mapy',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      SizedBox(
                        height: 30.h,
                        width: 92.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: FlutterMap(
                            mapController: _controller,
                            options: MapOptions(
                              initialCenter:
                                  locations.firstOrNull!.coordinates.location,
                              initialZoom: 15,
                            ),
                            children: [
                              openStreetMapTileLayer,
                              MarkerLayer(
                                markers: [
                                  ...locations.map((location) {
                                    return Marker(
                                      point: location.coordinates.location,
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: () {
                                          showLocationInfoDialog(
                                              context, location);
                                        },
                                        child: Icon(
                                          Icons.location_on,
                                          color: location.color,
                                          size: 25.sp,
                                          shadows: buildShadows(),
                                        ),
                                      ),
                                    );
                                  }),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      SizedBox(
                        height: 5.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: locations.length,
                          itemBuilder: (context, index) {
                            LocationModel location = locations[index];
                            return GestureDetector(
                              onTap: () => _controller.move(
                                  location.coordinates.location, 15),
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  decoration: BoxDecoration(
                                    color: element,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: location.color,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      width: 4.sp,
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 1.h, horizontal: 2.w),
                                  child: Text(location.name),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }

              return Container();
            });
          }

          return Container();
        }),
      ),
    );
  }

  List<Shadow> buildShadows() {
    return [
      Shadow(
        color: Colors.black,
        blurRadius: 7,
      ),
    ];
  }

  void showLocationInfoDialog(BuildContext context, LocationModel location) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            location.name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              height: 1,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (location.image != null) ...[
                Image.network(
                  location.image!,
                  fit: BoxFit.cover,
                  height: 30.w,
                  width: 80.w,
                ),
                SizedBox(height: 1.h),
              ],
              Text(
                location.description,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                'Adres: ${location.address}',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                'Koordynaty: ${location.coordinates.latitude}, ${location.coordinates.longitude}',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 1.h),
              SecondaryButtonWidget(
                title: 'Zobacz w mapach',
                onTap: () async {
                  final availableMaps = await MapLauncher.installedMaps;
                  await availableMaps.first.showMarker(
                    coords: Coords(
                      location.coordinates.latitude,
                      location.coordinates.longitude,
                    ),
                    title: location.name,
                    description: location.description,
                  );
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text('Zamknij'),
            ),
          ],
        );
      },
    );
  }
}
