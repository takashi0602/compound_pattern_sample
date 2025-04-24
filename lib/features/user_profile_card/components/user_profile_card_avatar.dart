import 'package:compound_pattern_sample/features/user_profile_card/models/user_profile_card_child.dart';
import 'package:compound_pattern_sample/features/user_profile_card/scopes/user_profile_scope.dart';
import 'package:flutter/material.dart';

class UserProfileCardAvatar extends Avatar {
  const UserProfileCardAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final scope = UserProfileScope.of(context, listen: false);

    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(scope.userProfile.imageUrl),
        ),
      ),
    );
  }
}
