import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/common/util/snackbar.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
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
  late TextEditingController _firstNameController;

  @override
  void initState() {
    _firstNameController =
        TextEditingController(text: widget.user.fullName.givenName ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          _firstNameController.text != widget.user.fullName.givenName
              ? FloatingActionButton.extended(
                  onPressed: () async {
                    bool changed = await get<UserRepositoryImpl>()
                        .updateFirstName(_firstNameController.text);
                    if (changed) {
                      Future.delayed(Duration.zero, () {
                        if (context.mounted) {
                          context.replace('/user/page/configuration',
                              extra: currentUser);
                        }
                      });
                      success('Zmieniono pierwsze imię.');
                    } else {
                      error('Błąd przy zmianie pierwszego imienia.');
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
                )
              : null,
      body: SafeArea(
        child: Column(
          children: [
            BackWithText(
              title: 'Konfiguracja profilu',
            ),
            SizedBox(height: 2.5.h),
            Container(
              width: 92.w,
              decoration: BoxDecoration(
                color: element,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
              child: TextField(
                controller: _firstNameController,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Pierwsze imię',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15.5.sp,
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
