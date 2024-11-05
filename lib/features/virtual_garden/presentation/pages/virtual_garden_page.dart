import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/presentation/widgets/virtual_plant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VirtualGardenPage extends StatelessWidget {
  final VirtualGardenModel virtualGarden;

  const VirtualGardenPage({
    super.key,
    required this.virtualGarden,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BackWithText(title: 'Wirtualny ogródek'),
            SizedBox(height: 2.5.h),
            SizedBox(
              width: 92.w,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 12.sp,
                  mainAxisSpacing: 12.sp,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  if (index < virtualGarden.plants.length) {
                    return VirtualPlantWidget(
                        plant: virtualGarden.plants[index]);
                  } else {
                    return Container(
                      decoration: BoxDecoration(
                        color: element,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 2.5.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Status upraw',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/grass.svg'),
                      SizedBox(width: 2.w),
                      Text(
                        '${virtualGarden.plants.where((plant) => plant.weedsRemovedNeeded > 0).length} uprawy wymagają usunięcią chwastów',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.5.sp,
                          letterSpacing: -0.6,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 0.5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/watered.svg'),
                      SizedBox(width: 2.w),
                      Text(
                        '${virtualGarden.plants.where((plant) => plant.wateringNeeded > 0).length} uprawy wymagają podlania',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.5.sp,
                          letterSpacing: -0.6,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 0.5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/fertilizer.svg'),
                      SizedBox(width: 2.w),
                      Text(
                        '${virtualGarden.plants.where((plant) => plant.fertilizerNeeded > 0).length} uprawy wymagają nawożenia',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.5.sp,
                          letterSpacing: -0.6,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.5.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Dostępne akcje',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 33.w,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/fertilizer.svg'),
                      SizedBox(height: 0.25.h),
                      Text(
                        '${virtualGarden.userActions.fertilizingCount}/${virtualGarden.userActions.fertilizingMaxCount}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp,
                          height: 1,
                        ),
                      ),
                      Text(
                        'Nawożenie',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 33.w,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/grass.svg'),
                      SizedBox(height: 0.25.h),
                      Text(
                        '${virtualGarden.userActions.weedsRemoved}/${virtualGarden.userActions.weedsMaxRemoved}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp,
                          height: 1,
                        ),
                      ),
                      Text(
                        'Usuwanie chwastów',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 33.w,
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/watered.svg'),
                      SizedBox(height: 0.25.h),
                      Text(
                        '${virtualGarden.userActions.wateringCount}/${virtualGarden.userActions.wateringMaxCount}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp,
                          height: 1,
                        ),
                      ),
                      Text(
                        'Podlewanie',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
