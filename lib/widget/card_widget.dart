import 'package:card_ui/utils/margin_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
//  @required
  final String amount;
  @required
  final String name;
  @required
  final String expiry;

  const CardWidget({Key key, this.amount, this.name, this.expiry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        height: 350,
        padding: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/card2.png'),
            // image: 'assets/images/card.png',
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildTitle(amount),
                customYMargin(55),
                Row(
                  children: [
                    _buildName(name),
                    customXMargin(50),
                    _buildExpiry(expiry),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_buildTitle(amount) => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'D E B I T',
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        customYMargin(60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$amount',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: 'OCRAEXT',
                letterSpacing: 2,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
//        customYMargin(40),
      ],
    );

_buildName(name) => Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CARD HOLDER',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
            yMargin5,
            Text(
              '$name',
              style: TextStyle(
//                fontFamily: 'OCRAEXT',
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );

_buildExpiry(expiry) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EXPIRES',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
            yMargin5,
            Text(
              '$expiry',
              style: TextStyle(
//                fontFamily: 'OCRAEXT',
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        )
      ],
    );
