class User {
  final String name;
  final String userName;
  final String email;
  final String password;
  final String imageUrl;

  User({this.email, this.name, this.password, this.userName, this.imageUrl, });

  String displayUserName() {
    return '@' + this.userName;
  }
}
