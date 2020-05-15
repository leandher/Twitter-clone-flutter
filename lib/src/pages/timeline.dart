import 'package:flutter/material.dart';
import 'package:mobile/src/components/post.dart';
import '../models/post.model.dart';

class TimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: mockData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            Post(post: mockData[i])
          ],
        ),
      ),
    );
  }
}
