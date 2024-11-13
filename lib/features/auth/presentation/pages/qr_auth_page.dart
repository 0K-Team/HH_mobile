import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QrAuthPage extends StatefulWidget {
  const QrAuthPage({super.key});

  @override
  State<QrAuthPage> createState() => _QrAuthPageState();
}

class _QrAuthPageState extends State<QrAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackWithText(title: 'Logowanie kodem QR'),
              SizedBox(height: 2.5.h),
              QRCodeDartScanView(
                heightPreview: 80.h,
                widthPreview: 94.w,
                resolutionPreset: QRCodeDartScanResolutionPreset.high,
                onCapture: (result) async {
                  try {
                    Response response = await get<Dio>().post(
                        'https://ecohero.q1000q.me/api/v1/auth/qr',
                        data: {"token": result.text});
                    if (response.statusCode == 200) {
                      if (context.mounted) {
                        context.pop();
                      }
                    }
                  } catch (_) {
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
