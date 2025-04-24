import 'package:compound_pattern_sample/features/user_profile_card/models/user_profile_card_child.dart';
import 'package:compound_pattern_sample/features/user_profile_card/scopes/user_profile_scope.dart';
import 'package:flutter/material.dart';

class UserProfileCardFollowButton extends FollowButton {
  const UserProfileCardFollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    final scope = UserProfileScope.of(context, listen: true);

    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: scope.onToggleFollow,
        style: TextButton.styleFrom(
          backgroundColor:
              scope.userProfile.isFollowing ? Colors.blue : Colors.white,
          foregroundColor:
              scope.userProfile.isFollowing ? Colors.white : Colors.blue,
          padding: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          scope.userProfile.isFollowing ? 'フォロー中' : 'フォローする',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
