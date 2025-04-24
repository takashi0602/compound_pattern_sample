import 'package:compound_pattern_sample/features/user_profile_card/models/user_profile.dart';
import 'package:flutter/material.dart';

class UserProfileScope extends InheritedWidget {
  const UserProfileScope({
    required this.userProfile,
    required this.onToggleFollow,
    required super.child,
    super.key,
  });

  final UserProfile userProfile;
  final VoidCallback onToggleFollow;

  static UserProfileScope of(BuildContext context, {required bool listen}) {
    final scope =
        listen
            ? context.dependOnInheritedWidgetOfExactType<UserProfileScope>()
            : context.getInheritedWidgetOfExactType<UserProfileScope>();
    assert(scope != null, 'UserProfileCard の子ウィジェットで使用してください');
    return scope!;
  }

  @override
  bool updateShouldNotify(covariant UserProfileScope oldWidget) =>
      oldWidget.userProfile.isFollowing != userProfile.isFollowing;
}
