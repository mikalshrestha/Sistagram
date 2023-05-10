// Define a data model for the timeline posts
class TimelinePost {
  final String id;
  final String username;
  final String content;
  final String imageUrl;
  final String timeAgo;

  TimelinePost({
    required this.id,
    required this.username,
    required this.content,
    required this.imageUrl,
    required this.timeAgo,
  });
}

// Define a list of timeline posts (dummy data)
final List<TimelinePost> timelinePosts = [
  TimelinePost(
    id: '1',
    username: 'Mikal Shrestha',
    content: 'Post 1 content is so nice here you can see the image of this post',
    imageUrl: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
    timeAgo: '1 hour ago',
  ),
  TimelinePost(
    id: '2',
    username: 'Swornim Shah',
    content: 'Post 2 content is so nice here you can see the image of this post',
    imageUrl: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
    timeAgo: '3 hours ago',
  ),
  TimelinePost(
    id: '3',
    username: 'Priyanka Shah',
    content: 'Post 3 content is so nice here you can see the image of this post',
    imageUrl: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
    timeAgo: '6 hours ago',
  ),
  TimelinePost(
    id: '6',
    username: 'Priyanka Shah',
    content: 'Post 3 content',
    imageUrl: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
    timeAgo: '6 hours ago',
  ),
  TimelinePost(
    id: '4',
    username: 'Priyanka Shah',
    content: 'Post 3 content',
    imageUrl: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
    timeAgo: '6 hours ago',
  ),
  TimelinePost(
    id: '5',
    username: 'Priyanka Shah',
    content: 'Post 3 content',
    imageUrl: 'https://images.unsplash.com/photo-1585250003309-694ff34512d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
    timeAgo: '6 hours ago',
  ),
];