import 'package:flutter/material.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';

class SkillsWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
      child: Column(
        children: [
          Text('Skills',
              style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
          Text('Dev. Flutter | Android | Web', style: profile_text),
          Text('UI - UX | AdobeXD', style: profile_text),
          Text('Dev. NodeJS | TypeScript | TypeORM', style: profile_text),
          Text('Firebase | Auth | Storage | Push Notifications',
              style: profile_text),
        ],
      ),
    );
  }
}
