import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/common/util/extensions/bloc_extension.dart';
import 'package:eco_hero_mobile/features/events/data/models/event_model.dart';
import 'package:eco_hero_mobile/features/events/presentation/blocs/events_bloc.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EventPage extends StatelessWidget {
  final EventModel event;

  const EventPage({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    bool isInEvent = event.members.contains(currentUser?.id);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(title: event.title),
              SizedBox(height: 2.5.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: event.image,
                  fit: BoxFit.cover,
                  height: 20.h,
                  width: 92.w,
                ),
              ),
              SizedBox(height: 1.h),
              SizedBox(
                width: 92.w,
                child: Text(
                  event.description,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.sp,
                    height: 1.2,
                    letterSpacing: -0.4,
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 0.25.h,
                    horizontal: 1.5.w,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    color: element,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    event.category,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: accent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.5.h),
              if (event.additionalInfo.whatToBring != null ||
                  event.additionalInfo.eventRules != null)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Text(
                      'Dodatkowe informacje',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              if (event.additionalInfo.eventRules != null)
                SizedBox(
                  width: 92.w,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.rule,
                        color: accent,
                        size: 24.sp,
                      ),
                      SizedBox(width: 1.w),
                      SizedBox(
                        width: 70.w,
                        child: Text(
                          'Zasady: ${event.additionalInfo.eventRules!}',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              if (event.additionalInfo.whatToBring != null)
                SizedBox(
                  width: 92.w,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.shopping_bag,
                        color: accent,
                        size: 24.sp,
                      ),
                      SizedBox(width: 1.w),
                      SizedBox(
                        width: 70.w,
                        child: Text(
                          'Weź: ${event.additionalInfo.whatToBring!}',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 1.5.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Text(
                    'Lokalizacja',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    event.location.address,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.5.h),
              SecondaryButtonWidget(
                title: 'Otwórz w mapach',
                onTap: () async {
                  final availableMaps = await MapLauncher.installedMaps;
                  await availableMaps.first.showMarker(
                    coords: Coords(
                        event.location.latitude, event.location.longitude),
                    title: event.title,
                    description: event.location.address,
                  );
                },
              ),
              SizedBox(height: 1.5.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Text(
                    'Data i czas',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.5.h),
              Text(
                'Zaczyna się: ${DateFormat().format(event.date)}',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
              Text(
                'Wydarzenie trwa przez: ${event.duration}',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
              SizedBox(height: 1.5.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Text(
                    'Członkowie',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 92.w,
                child: Text(
                  '${event.members.join(', ')} (${event.members.length})',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 2.5.h),
              PrimaryButtonWidget(
                title: !isInEvent ? 'Dołącz do wydarzenia' : 'Opuść wydarzenie',
                onTap: () async {
                  EventsBloc events = get();
                  if (isInEvent) {
                    await events.addAndWait(EventsQuited(event));
                  } else {
                    await events.addAndWait(EventsJoined(event));
                  }

                  if (context.mounted) {
                    context.pop();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
