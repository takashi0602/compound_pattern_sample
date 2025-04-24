import 'package:compound_pattern_sample/features/user_profile_card/components/user_profile_card.dart';
import 'package:compound_pattern_sample/features/user_profile_card/components/user_profile_card_age.dart';
import 'package:compound_pattern_sample/features/user_profile_card/components/user_profile_card_avatar.dart';
import 'package:compound_pattern_sample/features/user_profile_card/components/user_profile_card_follow_button.dart';
import 'package:compound_pattern_sample/features/user_profile_card/components/user_profile_card_hobby.dart';
import 'package:compound_pattern_sample/features/user_profile_card/components/user_profile_card_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compound Pattern Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Compound Pattern Sample'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: const UserProfileCard(
          id: '1',
          children: [
            UserProfileCardAvatar(),
            UserProfileCardName(),
            UserProfileCardAge(),
            UserProfileCardHobby(),
            UserProfileCardFollowButton(),
          ],
        ),
      ),
    );
  }
}
