import 'package:flutter/material.dart';

class ORdivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Divider(
            color: Colors.grey,
            height: 1.5,
          )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR',
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
              child: Divider(
            color: Colors.grey,
            height: 1.5,
          )),
        ],
      ),
    );
  }
}
