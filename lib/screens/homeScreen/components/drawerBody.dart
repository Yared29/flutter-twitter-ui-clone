import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_clone/config/pallete.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);
  Widget _drawerHeader() {
    return DrawerHeader(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Palette.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/CaptainJackSparrow.jpg'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jack',
                    style: TextStyle(
                        color: Palette.extraLightGray,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '@Capitain',
                    style: TextStyle(
                      color: Palette.gray,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                color: Palette.blue,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(
                      text: '82 ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Palette.extraLightGray,
                      ),
                      children: [
                    TextSpan(
                      text: 'Following  ',
                      style: TextStyle(
                          color: Palette.gray,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    )
                  ])),
              SizedBox(
                width: 6,
              ),
              RichText(
                  text: TextSpan(
                      text: '46 ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Palette.extraLightGray,
                      ),
                      children: [
                    TextSpan(
                      text: 'Followers',
                      style: TextStyle(
                          color: Palette.gray,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    )
                  ])),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawerItem({icon, label, onTap}) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(
        icon,
        color: Palette.gray,
      ),
      title:
          Text(label, style: TextStyle(color: Palette.lightGray, fontSize: 17)),
    );
  }

  Widget _textButton({text, onPressed}) {
    return TextButton(
        child: Text(
          text,
          style: TextStyle(color: Palette.extraLightGray, fontSize: 16),
        ),
        onPressed: onPressed);
  }

  Widget _divider() {
    return Divider(
      thickness: 0.3,
      color: Palette.darkGray,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Palette.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _drawerHeader(),
            _divider(),
            _drawerItem(
                label: 'Profile',
                icon: 'assets/icons/profile.svg',
                onTap: () {}),
            _drawerItem(
                label: 'Lists', icon: 'assets/icons/lists.svg', onTap: () {}),
            _drawerItem(
                label: 'Topics', icon: 'assets/icons/topics.svg', onTap: () {}),
            _drawerItem(
                label: 'Bookmarks',
                icon: 'assets/icons/bookmarks.svg',
                onTap: () {}),
            _drawerItem(
                label: 'Moments',
                icon: 'assets/icons/moments.svg',
                onTap: () {}),
            _drawerItem(
                label: 'Monestisation',
                icon: 'assets/icons/switchTimeline.svg',
                onTap: () {
                  print('hi');
                }),
            _divider(),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: _textButton(
                    text: 'Settings and privacy', onPressed: () {})),
            SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 15, 20),
                child: _textButton(text: 'Help Center', onPressed: () {})),
            Spacer(),
            _divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 15, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/icons/light.svg',
                    color: Palette.blue,
                    height: 22,
                    width: 22,
                  ),
                  SvgPicture.asset(
                    'assets/icons/qrCode.svg',
                    color: Palette.blue,
                    height: 22,
                    width: 22,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
