import 'package:compound_pattern_sample/features/user_profile_card/models/user_profile_card_child.dart';
import 'package:compound_pattern_sample/features/user_profile_card/scopes/user_profile_scope.dart';
import 'package:flutter/material.dart';

class UserProfileCardAge extends Age {
  const UserProfileCardAge({super.key});

  @override
  Widget build(BuildContext context) {
    final scope = UserProfileScope.of(context, listen: false);

    return Text(
      '年齢: ${scope.userProfile.age}歳',
      style: const TextStyle(fontSize: 16),
    );
  }
}
