import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/events/data/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EventWidget extends StatelessWidget {
  final EventModel event;

  const EventWidget({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.push('/event/page', extra: event),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: event.image,
              width: 92.w,
              height: 20.h,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 92.w,
            height: 20.h,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.30, -0.96),
                end: Alignment(0.3, 0.96),
                colors: [element, Color(0x00959595)],
              ),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
          SizedBox(
            width: 92.w,
            height: 20.h,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.75.h, horizontal: 2.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        event.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          height: 1,
                          wordSpacing: -1.2,
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 0.25.h,
                          horizontal: 1.5.w,
                        ),
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
                      SizedBox(height: 0.5.h),
                      Text(
                        event.description,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 0.5.h),
                      Text(
                        '${event.duration} - ${DateFormat().format(event.date)}',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: accent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 0.75.h, horizontal: 2.w),
                      child: Text(
                        'Zobacz więcej',
                        style: TextStyle(
                          color: element,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
