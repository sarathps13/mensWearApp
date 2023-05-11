import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  const TextData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18),
      child: Column(
        children: const <Widget>[
          Text(
            ''' It is a long established fact that a reader will be    distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''',
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}
