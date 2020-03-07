import 'package:audiovideocalling/screens/pageview/call_log_screen.dart';
import 'package:audiovideocalling/screens/pageview/chat_list_screen.dart';
import 'package:audiovideocalling/screens/pageview/contact_screen.dart';
import 'package:audiovideocalling/utils/universal_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController;

  int _page = 0;
  double labelFontSize = 10.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: UniversalVariables.blackColor,
        body: PageView(
          children: <Widget>[
            Container(
              child: ChatListScreen(),
            ),
            Container(
              child: CallLogScreen(),
            ),
            Container(
              child: ContactScreen(),
            ),
          ],
          controller: pageController,
          onPageChanged: onPageChanged,
          physics: const NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CupertinoTabBar(
              backgroundColor: UniversalVariables.blackColor,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat,
                        color: (_page == 0)
                            ? UniversalVariables.lightBlueColor
                            : UniversalVariables.greyColor),
                    title: Text(
                      'Chats',
                      style: TextStyle(
                          fontSize: labelFontSize,
                          color: (_page == 0)
                              ? UniversalVariables.lightBlueColor
                              : Colors.grey),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.call,
                        color: (_page == 1)
                            ? UniversalVariables.lightBlueColor
                            : UniversalVariables.greyColor),
                    title: Text(
                      'Chats',
                      style: TextStyle(
                          fontSize: labelFontSize,
                          color: (_page == 1)
                              ? UniversalVariables.lightBlueColor
                              : Colors.grey),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.contact_phone,
                        color: (_page == 2)
                            ? UniversalVariables.lightBlueColor
                            : UniversalVariables.greyColor),
                    title: Text(
                      'Chats',
                      style: TextStyle(
                          fontSize: labelFontSize,
                          color: (_page == 2)
                              ? UniversalVariables.lightBlueColor
                              : Colors.grey),
                    ))
              ],
              onTap: navigationTapped,
              currentIndex: _page,
            ),
          ),
        ),
      ),
    );
  }
}
