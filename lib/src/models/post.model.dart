import 'package:mobile/src/models/user.model.dart';

class PostModel {
  final User user;
  final List<Comment> comments;
  final String content;
  final String imageUrl;
  final String time;

  PostModel({this.time, this.user, this.comments, this.content, this.imageUrl});
}

class Comment {
  final User user;
  final String content;
  final String imageUrl;
  Comment({this.user, this.content, this.imageUrl});
}

User user = new User(
  email: 'leandher@mail', 
  name: 'Leandher Bessa', 
  userName: 'leandher', 
  password: '123123',
  imageUrl: 'https://f0.pngfuel.com/png/340/946/man-face-illustration-avatar-user-computer-icons-software-developer-avatar-png-clip-art.png',
);

List<PostModel> mockData = [
  new PostModel(comments: [], user: user, content: 'Hello world', time: '30 min'),
  new PostModel(comments: [], user: user, content: 'My laptop', imageUrl: 'https://a-static.mlcdn.com.br/618x463/notebook-positivo-motion-c4500c-intel-dual-core-4gb-500gb-14-windows-10-home/magazineluiza/224625000/4657ca0b32e686ed09ae15559089f638.jpg', time: '1h'),
  new PostModel(comments: [new Comment(content: 'Hello Flutter', user: new User(userName: 'jacky'))], user: user, content: 'Hello world', time: '4h'),
];