import 'package:flutter/material.dart';
import 'package:shamo/pages/sign_up_page.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }

  Widget menuItem(String text) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: primaryTextColor,
          ),
        ],
      ),
    );
  }

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/image_profile.png',
                  width: 64,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hallo, Dukhaan',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      '@dukhaan',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-in', (route) => false);
                },
                child: Image.asset(
                  'assets/button_exit.png',
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Account',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/edit-profile');
              },
              child: menuItem(
                'Edit Profile',
              ),
            ),
            menuItem(
              'Your Orders',
            ),
            menuItem(
              'Help',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'General',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            menuItem(
              'Privacy & Policy',
            ),
            menuItem(
              'Term of Service',
            ),
            menuItem(
              'Rate App',
            ),
          ],
        ),
      ),
    );
  }
}
