import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/common/util/snackbar.dart';
import 'package:eco_hero_mobile/features/auth/auth_handler.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/preferred_topics_repository_impl.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/user_repository_impl.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user.dart';
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
  late TextEditingController _titleController;

  @override
  void initState() {
    _firstNameController =
        TextEditingController(text: widget.user.fullName.givenName ?? '');
    _lastNameController =
        TextEditingController(text: widget.user.fullName.familyName ?? '');
    _bioController = TextEditingController(text: widget.user.bio ?? '');
    _locationController =
        TextEditingController(text: widget.user.location ?? '');
    _titleController = TextEditingController(text: widget.user.title ?? '');
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
                  controller: _titleController,
                  onChanged: (_) => setState(() => isDirty = true),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Tytuł',
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
              FutureBuilder(
                  future: get<PreferredTopicsRepositoryImpl>()
                      .fetchPreferredTopics(),
                  builder: (context, snapshot) {
                    if (snapshot.data == null) {
                      return SecondaryButtonWidget(
                        title: 'Preferowane tematy',
                      );
                    }

                    return snapshot.data!.fold((topics) {
                      return SecondaryButtonWidget(
                        title: 'Preferowane tematy',
                        onTap: () {
                          context.push('/user/page/preferred_topics/page',
                              extra: topics);
                        },
                      );
                    }, (exception) => Text(exception.toString()));
                  }),
              SizedBox(height: 1.h),
              SecondaryButtonWidget(
                title: 'Zaloguj się kodem QR',
                onTap: () => context.push('/auth/qr/page'),
              ),
              SizedBox(height: 1.h),
              SecondaryButtonWidget(
                title: 'Zobacz swój profil',
                onTap: () => context.push('/user/page', extra: currentUser!),
              ),
              SizedBox(height: 1.h),
              PrimaryButtonWidget(
                onTap: () => AuthHandler.logout(context),
                title: 'Wyloguj się',
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

        if (_titleController.text != widget.user.title) {
          bool changed = await get<UserRepositoryImpl>()
              .updateTitle(_titleController.text);
          if (changed) {
            isDirty = false;
            Future.delayed(Duration.zero, () {
              if (context.mounted) {
                context.replace('/user/page/configuration', extra: currentUser);
              }
            });
            success('Zmieniono tytuł.');
          } else {
            error('Błąd przy zmianie tytułu.');
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
