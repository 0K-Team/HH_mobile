import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/features/user/data/models/preferred_topic.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/user_repository_impl.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserPreferredTopicsPage extends StatefulWidget {
  final List<PreferredTopicModel> preferredTopics;

  const UserPreferredTopicsPage({super.key, required this.preferredTopics});

  @override
  State<UserPreferredTopicsPage> createState() =>
      _UserPreferredTopicsPageState();
}

class _UserPreferredTopicsPageState extends State<UserPreferredTopicsPage> {
  bool isDirty = false;
  late List<String> _preferredTopics;

  @override
  void initState() {
    _preferredTopics = currentUser!.preferredTopics.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: isDirty ? buildFloatingActionButton(context) : null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(title: 'Konfiguracja preferowanych tematów'),
              SizedBox(height: 2.5.h),
              Wrap(
                spacing: 0.sp,
                runSpacing: 10.sp,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  ...widget.preferredTopics.map(
                    (topic) {
                      bool isSelected = _preferredTopics.contains(topic.name);

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isDirty = true;
                            if (isSelected) {
                              _preferredTopics.remove(topic.name);
                            } else {
                              _preferredTopics.add(topic.name);
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: element,
                            borderRadius: BorderRadius.circular(8),
                            border: isSelected
                                ? Border.all(
                                    color: accent,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                  )
                                : null,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 0.25.h,
                            horizontal: 1.5.w,
                          ),
                          child: Text(
                            topic.name,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () async {
        if (_preferredTopics != currentUser?.preferredTopics) {
          for (String topic in _preferredTopics) {
            if (!currentUser!.preferredTopics
                .any((string) => string == topic)) {
              await get<UserRepositoryImpl>().addPreferredTopic(topic);
            }
          }

          for (String topic in currentUser!.preferredTopics) {
            if (!_preferredTopics.any((string) => string == topic)) {
              await get<UserRepositoryImpl>().removePreferredTopic(topic);
            }
          }

          isDirty = false;
          Future.delayed(Duration.zero, () {
            if (context.mounted) {
              context.replace('/user/page/preferred_topics/page',
                  extra: widget.preferredTopics);
            }
          });
        }
      },
      label: Text(
        'Zapisz',
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: element,
        ),
      ),
    );
  }
}
