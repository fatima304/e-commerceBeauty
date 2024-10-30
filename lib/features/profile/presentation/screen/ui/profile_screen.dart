import 'package:flutter/material.dart';

import '../widgets/listtile_items.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return DefaultTextStyle(
      style: TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 15),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30.0),
            buildProfileHeader(isDarkTheme),
            const SizedBox(height: 20.0),
            // buildLanguageTile(isDarkTheme),
            buildProfileSettingsTile(isDarkTheme, context),
            buildDarkModeTile(isDarkTheme),
            buildPushNotificationsTile(isDarkTheme),
            buildLogoutTile(isDarkTheme),
          ],
        ),
      ),
    );
  }
}
