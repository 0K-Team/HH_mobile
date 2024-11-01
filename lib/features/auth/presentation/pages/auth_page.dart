import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/button.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:eco_hero_mobile/common/util/extensions/bloc_extension.dart';
import 'package:eco_hero_mobile/features/main/presentation/navigation_page_cubit.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> scopes = ['email', 'profile'];

    GoogleSignIn googleSignIn = GoogleSignIn(
      serverClientId:
          '1025551109866-tghkfutlmpjfvdhfio9hi88pnpgskqfr.apps.googleusercontent.com',
      scopes: scopes,
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
                width: 60.w,
                height: 60.w,
              ),
              SizedBox(height: 4.h),
              PrimaryButtonWidget(
                onTap: () async => await loginWithGoogle(context, googleSignIn),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/google.png',
                      color: element,
                      fit: BoxFit.cover,
                      height: 18.sp,
                      width: 18.sp,
                    ),
                    SizedBox(width: 1.5.w),
                    Text(
                      'Zaloguj się z Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: element,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 1.h),
              SecondaryButtonWidget(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/meta.png',
                      color: Colors.white,
                      fit: BoxFit.cover,
                      height: 18.sp,
                      width: 18.sp,
                    ),
                    SizedBox(width: 1.5.w),
                    Text(
                      'Zaloguj się z Meta',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 1.h),
              SecondaryButtonWidget(
                title: 'Zaloguj się przykładowymi danymi',
                onTap: () async {
                  await loginWithMockData(context);
                },
              ),
              SizedBox(height: 4.h),
              SizedBox(
                width: 92.w,
                child: Text(
                  'Rejestrując się, zgadzasz się na zasady przetwarzania danych osobowych.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loginWithMockData(BuildContext context) async {
    await get<CurrentUserBloc>().addAndWait(CurrentUserLoaded(
        UserModel(
          email: 'opkarol11@wp.pl',
          notifications: [
            UserModelNotification(
              title: 'powiadomienie',
              date: 'date',
            ),
          ],
          points: 999,
          friends: [],
          avatarHash: '1',
          bio: 'Jestem bardzo fajnym ekologiem, który sprząta po swoim psie 🔥',
          achievements: [],
          skills: [],
          badges: [],
          location: 'Kraków, Poland',
          preferredTopics: [
            'Zero waste',
            'Ekologia w mieście',
            'Energia odnawialna'
          ],
          id: '',
          username: '',
          fullName: UserModelFullName(
            givenName: 'Karol',
            familyName: 'Gajda',
          ),
          provider: '',
          googleID: '',
          facebookID: '',
          title: '',
        ),
        'n/a'));
    if (context.mounted) {
      get<NavigationPageCubit>().changePage(1);
      context.push('/');
    }
  }

  Future<void> loginWithGoogle(
      BuildContext context, GoogleSignIn googleSignIn) async {
    GoogleSignInAccount? account = await googleSignIn.signIn();
    if (account != null) {
      GoogleSignInAuthentication auth = await account.authentication;
      String? idToken = auth.idToken;
      googleSignIn.signOut();

      Response response = await get<Dio>().get(
        'https://ecohero.q1000q.me/api/v1/auth/googleToken',
        data: {
          'idToken': idToken,
        },
      );

      String jwt = response.data;
      Response user = await get<Dio>().get(
        'https://ecohero.q1000q.me/api/v1/user/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer $jwt',
          },
        ),
      );

      UserModel userModel = UserModel.fromJson(user.data);
      await get<CurrentUserBloc>()
          .addAndWait(CurrentUserLoaded(userModel, jwt));
      get<NavigationPageCubit>().changePage(1);
      if (context.mounted) {
        context.push('/');
      }
    } else {
      if (kDebugMode) {
        print('Google Sign-In failed');
      }
    }
  }
}
