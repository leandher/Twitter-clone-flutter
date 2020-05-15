import 'package:flutter/material.dart';
import 'package:mobile/src/models/post.model.dart';

class Post extends StatelessWidget {
  final PostModel post;

  const Post({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).accentColor,
        backgroundImage: NetworkImage(post.user.imageUrl),
      ),
      title: Wrap(
        children: <Widget>[
          Text(post.user.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Text(post.user.displayUserName(), overflow: TextOverflow.ellipsis,),
          ),
          Text(post.time)
        ],
      ),
      subtitle: new Container(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          post.content,
          style: TextStyle(color: Colors.black87, fontSize: 15.0),
        ),
      ),
    );
  }
}
