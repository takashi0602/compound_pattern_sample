class UserProfile {
  const UserProfile({
    required this.id,
    required this.name,
    required this.age,
    required this.hobby,
    required this.imageUrl,
    required this.isFollowing,
  });

  final String id;
  final String name;
  final int age;
  final String hobby;
  final String imageUrl;
  final bool isFollowing;

  UserProfile copyWith({
    String? id,
    String? name,
    int? age,
    String? hobby,
    String? imageUrl,
    bool? isFollowing,
  }) {
    return UserProfile(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      hobby: hobby ?? this.hobby,
      imageUrl: imageUrl ?? this.imageUrl,
      isFollowing: isFollowing ?? this.isFollowing,
    );
  }
}
