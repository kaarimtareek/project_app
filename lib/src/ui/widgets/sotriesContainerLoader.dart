import 'package:flutter/material.dart';

class StoryLoadingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      height: 300,
      width: size.width,
      color: Colors.black38,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey,
              // height: 100,
              width: size.width / 2,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
