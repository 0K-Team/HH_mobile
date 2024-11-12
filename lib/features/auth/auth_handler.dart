import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/router/go_router.dart';
import 'package:eco_hero_mobile/common/util/extensions/bloc_extension.dart';
import 'package:eco_hero_mobile/common/util/overlay_manager.dart';
import 'package:eco_hero_mobile/features/auth/auth_secure_storage.dart';
import 'package:eco_hero_mobile/features/discounts/presentation/blocs/discounts_bloc.dart';
import 'package:eco_hero_mobile/features/events/presentation/blocs/events_bloc.dart';
import 'package:eco_hero_mobile/features/main/navigation_page_cubit.dart';
import 'package:eco_hero_mobile/features/maps/presentation/blocs/locations_bloc.dart';
import 'package:eco_hero_mobile/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:eco_hero_mobile/features/products/presentation/blocs/products_bloc.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/blocs/quizzes_bloc.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthHandler {
  static const List<String> _scopes = ['email', 'profile'];
  static final GoogleSignIn googleSignIn = GoogleSignIn(
    serverClientId:
        '1025551109866-tghkfutlmpjfvdhfio9hi88pnpgskqfr.apps.googleusercontent.com',
    scopes: _scopes,
  );

  static Future<void> login(String jwt) async {
    try {
      Response user = await get<Dio>().get(
        'https://ecohero.q1000q.me/api/v1/user/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer $jwt',
          },
        ),
      );

      if (user.statusCode != 200) {
        await removeToken();
        return;
      }

      UserModel userModel = UserModel.fromJson(user.data);
      await get<CurrentUserBloc>()
          .addAndWait(CurrentUserLoaded(userModel, jwt));
      await get<PostsBloc>().addAndWait(PostsFetched());
      await get<QuizzesBloc>().addAndWait(QuizzesFetched());
      await get<EventsBloc>().addAndWait(EventsFetched());
      await get<ProductsBloc>().addAndWait(ProductsFetched());
      await get<DiscountsBloc>().addAndWait(DiscountsFetched());
      await get<LocationsBloc>().addAndWait(LocationsFetched());
      await get<AuthSecureStorage>().saveToken(jwt);
      get<NavigationPageCubit>().changePage(1);
      if (navigatorKey.currentState != null &&
          navigatorKey.currentState!.mounted) {
        navigatorKey.currentState!.context.push('/');
      }
      OverlayManager.hideOverlay();
    } catch (e) {
      await removeToken();
      return;
    }
  }

  static Future<void> removeToken() async {
    await get<AuthSecureStorage>().deleteToken();
    OverlayManager.hideOverlay();
    if (navigatorKey.currentState != null &&
        navigatorKey.currentState!.mounted) {
      navigatorKey.currentState!.context.push('/auth/page');
    }
  }

  static Future<void> loginWithGoogle(BuildContext context) async {
    OverlayManager.showOverlay(context);
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
      await AuthHandler.login(jwt);
    } else {
      OverlayManager.hideOverlay();
      if (kDebugMode) {
        print('Google Sign-In failed');
      }
    }
  }

  static Future<void> logout(BuildContext context) async {
    context.go('/auth/page');
    get<PostsBloc>().reset(PostsInitial());
    get<CurrentUserBloc>().reset(CurrentUserInitial());
    get<QuizzesBloc>().reset(QuizzesInitial());
    get<EventsBloc>().reset(EventsInitial());
    get<DiscountsBloc>().reset(DiscountsInitial());
    get<ProductsBloc>().reset(ProductsInitial());
    get<LocationsBloc>().reset(LocationsInitial());
    get<AuthSecureStorage>().deleteToken();
    get.reset();
  }
}
