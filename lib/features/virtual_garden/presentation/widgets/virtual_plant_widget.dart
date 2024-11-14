import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/plant_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/repositories/virtual_garden_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VirtualPlantWidget extends StatelessWidget {
  final VirtualGardenModelPlant plant;
  final bool isOwner;

  const VirtualPlantWidget({
    super.key,
    required this.plant,
    required this.isOwner,
  });

  void showPlantInfoDialog(BuildContext context, VirtualGardenModelPlant plant,
      PlantModel plantModel) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            plant.name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/${plant.type}.png',
                fit: BoxFit.cover,
                height: 25.w,
                width: 25.w,
              ),
              SizedBox(height: 1.h),
              Text(
                plantModel.description,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
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

  @override
  Widget build(BuildContext context) {
    bool needsWatering = plant.wateringNeeded > 0;
    bool needsFertilizing = plant.fertilizerNeeded > 0;
    bool needsRemovingWeeds = plant.weedsRemovedNeeded > 0;

    bool isGrown = plant.growthStage == 4;

    return GestureDetector(
      onTapDown: (details) {
        final offset = details.globalPosition;
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            offset.dx,
            offset.dy,
            MediaQuery.of(context).size.width - offset.dx,
            MediaQuery.of(context).size.height - offset.dy,
          ),
          color: element,
          items: [
            if (isOwner) ...[
              if (needsRemovingWeeds)
                PopupMenuItem(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/grass.svg',
                        fit: BoxFit.cover,
                        height: 5.5.w,
                        width: 5.5.w,
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        'Usuń chwasty',
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  onTap: () async {
                    (await get<VirtualGardenRepositoryImpl>()
                            .removedWeedsInPlant(plant.plantId))
                        .fold((garden) {
                      if (context.mounted) {
                        context.replace('/virtual_garden/page', extra: garden);
                      }
                    }, (exception) {});
                  },
                ),
              if (needsFertilizing)
                PopupMenuItem(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/fertilizer.svg',
                        fit: BoxFit.cover,
                        height: 5.5.w,
                        width: 5.5.w,
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        'Użyżnij',
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  onTap: () async {
                    (await get<VirtualGardenRepositoryImpl>()
                            .fertilizePlant(plant.plantId))
                        .fold((garden) {
                      if (context.mounted) {
                        context.replace('/virtual_garden/page', extra: garden);
                      }
                    }, (exception) {});
                  },
                ),
              if (needsWatering)
                PopupMenuItem(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/watered.svg',
                        fit: BoxFit.cover,
                        height: 5.5.w,
                        width: 5.5.w,
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        'Nawodnij',
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  onTap: () async {
                    (await get<VirtualGardenRepositoryImpl>()
                            .waterPlant(plant.plantId))
                        .fold((garden) {
                      if (context.mounted) {
                        context.replace('/virtual_garden/page', extra: garden);
                      }
                    }, (exception) {});
                  },
                ),
              if (isGrown)
                PopupMenuItem(
                  child: Text(
                    'Zbierz',
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                  onTap: () async {
                    (await get<VirtualGardenRepositoryImpl>()
                            .collectPlant(plant.plantId))
                        .fold((garden) {
                      if (context.mounted) {
                        context.replace('/virtual_garden/page', extra: garden);
                      }
                    }, (exception) {});
                  },
                ),
              PopupMenuItem(
                child: Text(
                  'Sprzedaj',
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
                onTap: () async {
                  (await get<VirtualGardenRepositoryImpl>()
                          .sellPlant(plant.plantId))
                      .fold((garden) {
                    if (context.mounted) {
                      context.replace('/virtual_garden/page', extra: garden);
                    }
                  }, (exception) {});
                },
              ),
            ],
            PopupMenuItem(
              child: Text(
                'Informacje',
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              onTap: () async {
                await get<VirtualGardenRepositoryImpl>()
                    .fetchPlant(plant.type)
                    .fold((plant) {
                  if (context.mounted) {
                    showPlantInfoDialog(context, this.plant, plant);
                  }
                }, (_) {});
              },
            ),
          ],
        );
      },
      child: Container(
        width: 30.w,
        height: 30.w,
        decoration: BoxDecoration(
          color: element,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: 30.w,
          height: 30.w,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/${plant.type}.png',
                  fit: BoxFit.cover,
                  height: 25.w,
                  width: 25.w,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    plant.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 1.5.w,
                child: Text(
                  plant.growthStage.toString(),
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: accent,
                  ),
                ),
              ),
              Positioned(
                top: 0.25.h,
                right: 1.5.w,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (needsWatering)
                      SvgPicture.asset(
                        'assets/watered.svg',
                        fit: BoxFit.cover,
                        height: 5.5.w,
                        width: 5.5.w,
                      ),
                    if (needsRemovingWeeds)
                      SvgPicture.asset(
                        'assets/grass.svg',
                        fit: BoxFit.cover,
                        height: 5.5.w,
                        width: 5.5.w,
                      ),
                    if (needsFertilizing)
                      SvgPicture.asset(
                        'assets/fertilizer.svg',
                        fit: BoxFit.cover,
                        height: 5.5.w,
                        width: 5.5.w,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
