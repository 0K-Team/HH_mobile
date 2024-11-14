import 'package:eco_hero_mobile/common/util/back_with_text.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final UserModel user;

  const NotificationsPage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BackWithText(title: 'Powiadomienia'),
            // ListView.builder(
            //   itemBuilder: (context, index) {
            //     UserModelNotification notification = user.notifications[index];
            //     return Text(
            //       '${notification.title} ${notification.date}',
            //       style: TextStyle(
            //         fontWeight: FontWeight.w600,
            //         color: Colors.white,
            //       ),
            //     );
            //   },
            //   itemCount: user.notifications.length,
            //   shrinkWrap: true,
            // ),
          ],
        ),
      ),
    );
  }
}
