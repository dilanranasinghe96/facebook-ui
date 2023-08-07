import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            'facebook',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Spacer(
            flex: 1,
          ),
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.message,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
