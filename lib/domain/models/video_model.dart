
class VideoPost {
  final String thumbnailUrl;
  final String duration;
  final String title;
  final String username;
  final int likes;
  final int comments;
  final int shares;

  VideoPost({
    required this.thumbnailUrl,
    required this.duration,
    required this.title,
    required this.username,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}

// Sample video posts data
List<VideoPost> videoPosts = [
  VideoPost(
    thumbnailUrl:
    'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80', // Replace with actual thumbnail URL
    duration: '0:30', // Replace with actual duration
    title: 'How to make tea?', // Replace with actual title
    username: 'Mikal Shrestha', // Replace with actual username
    likes: 100, // Replace with actual number of likes
    comments: 20, // Replace with actual number of comments
    shares: 5, // Replace with actual number of shares
  ),
  VideoPost(
    thumbnailUrl:
    'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80', // Replace with actual thumbnail URL
    duration: '1:45', // Replace with actual duration
    title: 'Tutorial for flutter development', // Replace with actual title
    username: 'Mikal Shresth', // Replace with actual username
    likes: 250, // Replace with actual number of likes
    comments: 30, // Replace with actual number of comments
    shares: 10, // Replace with actual number of shares
  ),
  // Add more video posts data as needed
];