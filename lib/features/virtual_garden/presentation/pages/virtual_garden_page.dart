import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/presentation/widgets/virtual_plant_widget.dart';
import 'package:flutter/material.dart';
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
                    return VirtualPlantWidget(plant: virtualGarden.plants[index]);
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
            Text(virtualGarden.userActions.toString()),
          ],
        ),
      ),
    );
  }
}
