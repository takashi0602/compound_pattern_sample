import 'package:compound_pattern_sample/features/user_profile_card/models/user_profile.dart';
import 'package:compound_pattern_sample/features/user_profile_card/models/user_profile_card_child.dart';
import 'package:compound_pattern_sample/features/user_profile_card/scopes/user_profile_scope.dart';
import 'package:flutter/material.dart';

class UserProfileCard extends StatefulWidget {
  const UserProfileCard({super.key, required this.id, required this.children});

  final String id;
  final List<UserProfileCardChild> children;

  @override
  State<UserProfileCard> createState() => _UserProfileCardState();
}

class _UserProfileCardState extends State<UserProfileCard> {
  UserProfile? _userProfile;

  void _onToggleFollow() {
    if (_userProfile == null) return;
    setState(() {
      _userProfile = _userProfile!.copyWith(
        isFollowing: !_userProfile!.isFollowing,
      );
    });
  }

  void _fetchProfile() async {
    // API通信を想定して遅延させている
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    setState(() {
      _userProfile = UserProfile(
        id: widget.id,
        name: 'たかし',
        age: 26,
        hobby: '野球観戦',
        imageUrl: 'https://placehold.jp/40/b399ff/000000/150x150.png?text=T',
        isFollowing: false,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchProfile();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.purple.shade50,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:
              _userProfile == null
                  ? const SizedBox(
                    height: 200,
                    child: Center(child: CircularProgressIndicator()),
                  )
                  : UserProfileScope(
                    userProfile: _userProfile!,
                    onToggleFollow: _onToggleFollow,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: widget.children.separated(
                        const SizedBox(height: 12),
                      ),
                    ),
                  ),
        ),
      ),
    );
  }
}

extension Separated on List<Widget> {
  List<Widget> separated(Widget separator) {
    final result = <Widget>[];
    for (final item in this) {
      if (result.isNotEmpty) result.add(separator);
      result.add(item);
    }
    return result;
  }
}
