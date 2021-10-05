import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_clone/config/pallete.dart';
import 'package:twitter_clone/models/Tweet.dart';
import 'package:twitter_clone/screens/homeScreen/components/TweetCard.dart';
import 'package:twitter_clone/screens/homeScreen/components/drawerBody.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            elevation: 1.0,
            leading: InkWell(
              onTap: () => _scaffoldKey.currentState!.openDrawer(),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                decoration: BoxDecoration(
                  color: Palette.blue,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/CaptainJackSparrow.jpg'),
                  ),
                ),
              ),
            ),
            centerTitle: true,
            title: SvgPicture.asset(
              'assets/icons/twitter.svg',
              color: Palette.blue,
              height: 25,
              width: 25,
            ),
            actions: [
              SvgPicture.asset(
                'assets/icons/switchTimeline.svg',
                color: Palette.blue,
                height: 25,
                width: 25,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(top: 1),
                height: 0.4,
                color: Palette.darkGray),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return TweetCard(
                  tweet: tweets[index],
                );
              },
              childCount: tweets.length,
            ),
          ),
        ],
      ),
      drawer: DrawerBody(),
      bottomNavigationBar: SizedBox(
        height: 55,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(color: Palette.darkGray, width: 0.5)),
            ),
            child: BottomNavigationBar(
              backgroundColor: Palette.background,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                  // currentPage = pages[index];
                });
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/home.svg',
                    color:
                        _selectedIndex == 0 ? Palette.blue : Palette.darkGray,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/search.svg',
                    color:
                        _selectedIndex == 1 ? Palette.blue : Palette.darkGray,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/notification.svg',
                    color:
                        _selectedIndex == 2 ? Palette.blue : Palette.darkGray,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/message.svg',
                    color:
                        _selectedIndex == 3 ? Palette.blue : Palette.darkGray,
                  ),
                  label: "",
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset(
          'assets/icons/writeTweet.svg',
          color: Palette.white,
          height: 25,
          width: 25,
        ),
        onPressed: () => {},
      ),
    );
  }
}
