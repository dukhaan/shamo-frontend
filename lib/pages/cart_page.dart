import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: emptyCart(context),
    );
  }
}

AppBar header() {
  return AppBar(
    backgroundColor: backgroundColor1,
    centerTitle: true,
    title: Text(
      'Your Cart',
    ),
    elevation: 0,
  );
}

Widget emptyCart(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon_empty_cart.png',
          width: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Opss! Your Cart is Empty',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Let\'s find your favorite shoes',
          style: secondaryTextStyle,
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Explore Store',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
          color: backgroundColor1,
          width: 152,
          height: 44,
        ),
      ],
    ),
  );
}
