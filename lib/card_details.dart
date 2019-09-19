import 'package:flutter/material.dart';

class cardDetails extends StatelessWidget {
  cardDetails({this.cardDetailsIcon, this.cardDetailsText});

  final IconData cardDetailsIcon;
  final String cardDetailsText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(cardDetailsIcon
        , size: 80.0),
        SizedBox(
          height: 10.0,
        ),
        Text(
          cardDetailsText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}