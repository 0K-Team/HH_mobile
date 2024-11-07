import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/features/auth/auth_handler.dart';
import 'package:eco_hero_mobile/features/auth/auth_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  bool _loading = false;

  Future<void> _handleAuth(BuildContext context) async {
    if (_loading == true) {
      return;
    }

    _loading = true;
    final token = await get<AuthSecureStorage>().getToken();
    if (context.mounted) {
      if (token == null) {
        context.push('/auth/page');
      } else {
        await AuthHandler.login(token);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _handleAuth(context),
      builder: (context, snapshot) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 30.h,
                width: 30.h,
                fit: BoxFit.cover,
              ),
              Center(
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        );
      },
    );
  }
}
