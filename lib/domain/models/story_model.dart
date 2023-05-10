

class StoryItem {
  final String username;
  final String profileImage;

  StoryItem({required this.username, required this.profileImage});
  factory StoryItem.fromJson(Map<String, dynamic> json) {
    return StoryItem(
      username: json['username'],
      profileImage: json['profile_image'],
    );
  }
}

final List<StoryItem> stories = [
  StoryItem(username: 'Mikal', profileImage: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80'),
  StoryItem(username: 'Swornim', profileImage: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80'),
  StoryItem(username: 'Sagar', profileImage: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80'),
  StoryItem(username: 'Suman', profileImage: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80'),
  StoryItem(username: 'Shreejwal', profileImage: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80'),
];




