import 'package:compound_pattern_sample/features/user_profile_card/models/user_profile_card_child.dart';
import 'package:compound_pattern_sample/features/user_profile_card/scopes/user_profile_scope.dart';
import 'package:flutter/material.dart';

class UserProfileCardName extends Name {
  const UserProfileCardName({super.key});

  @override
  Widget build(BuildContext context) {
    final scope = UserProfileScope.of(context, listen: false);

    return Text(
      scope.userProfile.name,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
