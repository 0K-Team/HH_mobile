import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/common/util/extensions/bloc_extension.dart';
import 'package:eco_hero_mobile/common/util/snackbar.dart';
import 'package:eco_hero_mobile/features/auth/auth_secure_storage.dart';
import 'package:eco_hero_mobile/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/blocs/quizzes_bloc.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/user_repository_impl.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserConfigurationPage extends StatefulWidget {
  final UserModel user;

  const UserConfigurationPage({
    super.key,
    required this.user,
  });

  @override
  State<UserConfigurationPage> createState() => _UserConfigurationPageState();
}

class _UserConfigurationPageState extends State<UserConfigurationPage> {
  bool isDirty = false;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _bioController;
  late TextEditingController _locationController;
  late List<String> _preferredTopics;

  @override
  void initState() {
    _firstNameController =
        TextEditingController(text: widget.user.fullName.givenName ?? '');
    _lastNameController =
        TextEditingController(text: widget.user.fullName.familyName ?? '');
    _bioController = TextEditingController(text: widget.user.bio ?? '');
    _locationController =
        TextEditingController(text: widget.user.location ?? '');
    _preferredTopics = widget.user.preferredTopics.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: isDirty ? buildFloatingActionButton(context) : null,
      body: SafeArea(
        child: Column(
          children: [
            BackWithText(
              title: 'Konfiguracja profilu',
            ),
            SizedBox(height: 2.5.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Podstawowe informacje',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.5.h),
            Container(
              width: 92.w,
              decoration: BoxDecoration(
                color: element,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
              child: TextField(
                controller: _firstNameController,
                onChanged: (_) => setState(() => isDirty = true),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Pierwsze imię',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.5.sp,
                    height: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              width: 92.w,
              decoration: BoxDecoration(
                color: element,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
              child: TextField(
                controller: _lastNameController,
                onChanged: (_) => setState(() => isDirty = true),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Nazwisko',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.5.sp,
                    height: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              width: 92.w,
              decoration: BoxDecoration(
                color: element,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
              child: TextField(
                controller: _bioController,
                onChanged: (_) => setState(() => isDirty = true),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Opis',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.5.sp,
                    height: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              width: 92.w,
              decoration: BoxDecoration(
                color: element,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
              child: TextField(
                controller: _locationController,
                onChanged: (_) => setState(() => isDirty = true),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Lokalizacja',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.5.sp,
                    height: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Preferowane tematy',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.5.h),
            Wrap(
              spacing: 10.sp,
              runSpacing: 10.sp,
              alignment: WrapAlignment.spaceEvenly,
              children: [
                ...['Zero waste', 'Ekologia w mieście', 'Energia odnawialna']
                    .map(
                  (topic) => GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_preferredTopics.any((string) => string == topic)) {
                          isDirty = true;
                          _preferredTopics
                              .removeWhere((string) => string == topic);
                        } else {
                          isDirty = true;
                          _preferredTopics.add(topic);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: element,
                        borderRadius: BorderRadius.circular(8),
                        border:
                            _preferredTopics.any((string) => string == topic)
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
                        topic,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.5.h),
            PrimaryButtonWidget(
              onTap: () {
                context.go('/auth/page');
                get<PostsBloc>().reset(PostsInitial());
                get<CurrentUserBloc>().reset(CurrentUserInitial());
                get<QuizzesBloc>().reset(QuizzesInitial());
                get<AuthSecureStorage>().deleteToken();
              },
              title: 'Wyloguj się',
            )
          ],
        ),
      ),
    );
  }

  buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () async {
        if (_firstNameController.text != widget.user.fullName.givenName) {
          bool changed = await get<UserRepositoryImpl>()
              .updateFirstName(_firstNameController.text);
          if (changed) {
            isDirty = false;
            Future.delayed(Duration.zero, () {
              if (context.mounted) {
                context.replace('/user/page/configuration', extra: currentUser);
              }
            });
            success('Zmieniono pierwsze imię.');
          } else {
            error('Błąd przy zmianie pierwszego imienia.');
          }
        }

        if (_lastNameController.text != widget.user.fullName.familyName) {
          bool changed = await get<UserRepositoryImpl>()
              .updateLastName(_lastNameController.text);
          if (changed) {
            isDirty = false;
            Future.delayed(Duration.zero, () {
              if (context.mounted) {
                context.replace('/user/page/configuration', extra: currentUser);
              }
            });
            success('Zmieniono nazwisko.');
          } else {
            error('Błąd przy zmianie nazwiska.');
          }
        }

        if (_bioController.text != widget.user.bio &&
            (widget.user.bio != null || _bioController.text.isNotEmpty)) {
          bool changed =
              await get<UserRepositoryImpl>().updateBio(_bioController.text);
          if (changed) {
            isDirty = false;
            Future.delayed(Duration.zero, () {
              if (context.mounted) {
                context.replace('/user/page/configuration', extra: currentUser);
              }
            });
            success('Zmieniono opis.');
          } else {
            error('Błąd przy zmianie opisu.');
          }
        }

        if (_locationController.text != widget.user.location &&
            (widget.user.location != null ||
                _locationController.text.isNotEmpty)) {
          bool changed = await get<UserRepositoryImpl>()
              .updateLocation(_locationController.text);
          if (changed) {
            isDirty = false;
            Future.delayed(Duration.zero, () {
              if (context.mounted) {
                context.replace('/user/page/configuration', extra: currentUser);
              }
            });
            success('Zmieniono lokalizację.');
          } else {
            error('Błąd przy zmianie lokalizacji.');
          }
        }

        if (_preferredTopics != widget.user.preferredTopics) {
          for (String topic in _preferredTopics) {
            if (!widget.user.preferredTopics.any((string) => string == topic)) {
              await get<UserRepositoryImpl>().addPreferredTopic(topic);
            }
          }

          for (String topic in widget.user.preferredTopics) {
            if (!_preferredTopics.any((string) => string == topic)) {
              await get<UserRepositoryImpl>().removePreferredTopic(topic);
            }
          }

          isDirty = false;
          Future.delayed(Duration.zero, () {
            if (context.mounted) {
              context.replace('/user/page/configuration', extra: currentUser);
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
