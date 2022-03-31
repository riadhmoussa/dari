import 'package:dari/config/app_colors.dart';
import 'package:dari/views/main/views/home_page.dart';
import 'package:dari/views/main/views/bookmark_page.dart';
import 'package:dari/views/main/views/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _pageIndex= 0;
  final List<Widget> _tabList = [
     HomePage(),
     BookmarkPage(),
     ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _tabList.elementAt(_pageIndex),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Align(
              alignment: const Alignment(0.0,1.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: BottomNavigationBar(
                  selectedItemColor: AppColors.whiteColor,
                  unselectedItemColor: Colors.grey,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  backgroundColor: AppColors.primaryColor,
                  currentIndex: _pageIndex,
                  onTap: (int index){
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(icon: Icon(Icons.home),
                    label: "Acceuil"),
                    BottomNavigationBarItem(icon: Icon(Icons.sms),
                        label: "Mes annonces"),
                    BottomNavigationBarItem(icon: Icon(Icons.person_outline),
                        label: "Profil"),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
