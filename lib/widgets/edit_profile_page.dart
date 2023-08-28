import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(context),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}

AppBar header(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.close),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    backgroundColor: backgroundColor1,
    elevation: 0,
    centerTitle: true,
    title: Text('Edit Profile'),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.check),
        color: primaryColor,
      ),
    ],
  );
}

Widget nameInput() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: secondaryTextStyle.copyWith(fontSize: 13),
        ),
        TextFormField(
          style: primaryTextStyle,
          decoration: InputDecoration(
            hintText: 'Dukhaan Kamimpangan',
            hintStyle: primaryTextStyle,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: subtitleColor),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget usernameInput() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
          style: secondaryTextStyle.copyWith(fontSize: 13),
        ),
        TextFormField(
          style: primaryTextStyle,
          decoration: InputDecoration(
            hintText: '@dukhaan',
            hintStyle: primaryTextStyle,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: subtitleColor),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Address',
          style: secondaryTextStyle.copyWith(fontSize: 13),
        ),
        TextFormField(
          style: primaryTextStyle,
          decoration: InputDecoration(
            hintText: 'dukhaank@gmail.com',
            hintStyle: primaryTextStyle,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: subtitleColor),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget content() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.only(top: defaultMargin),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                'assets/image_profile.png',
              ))),
        ),
        nameInput(),
        usernameInput(),
        emailInput(),
      ],
    ),
  );
}
