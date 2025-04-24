import 'package:flutter/material.dart';

sealed class UserProfileCardChild extends StatelessWidget {
  const UserProfileCardChild({super.key});
}

class Avatar extends UserProfileCardChild {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class Name extends UserProfileCardChild {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class Age extends UserProfileCardChild {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class Hobby extends UserProfileCardChild {
  const Hobby({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class FollowButton extends UserProfileCardChild {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
