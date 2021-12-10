import 'package:flutter/material.dart';
import 'package:flutter_cygram/home/home_page.dart';
import 'package:flutter_cygram/reels/reels_page.dart';
import 'package:flutter_cygram/search/search_page.dart';
import 'package:flutter_cygram/shop/shop_page.dart';
import 'package:flutter_cygram/user/user_page.dart';

import 'package:flutter_cygram/user/user_profile_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  static final _navKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  final List<Navigator> _navigators = [
    Navigator(
      key: _navKeys[0],
      initialRoute: 'home',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case 'home':
            builder = (BuildContext _) => HomePage();
            break;
          case 'userprofile':
            builder = (BuildContext _) => UserProfilePage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    ),
    Navigator(
      key: _navKeys[1],
      initialRoute: 'search',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case 'search':
            builder = (BuildContext _) => SearchPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    ),
    Navigator(
      key: _navKeys[2],
      initialRoute: 'reels',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case 'reels':
            builder = (BuildContext _) => ReelsPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    ),
    Navigator(
      key: _navKeys[3],
      initialRoute: 'shop',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case 'shop':
            builder = (BuildContext _) => ShopPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    ),
    Navigator(
      key: _navKeys[4],
      initialRoute: 'user',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case 'user':
            builder = (BuildContext _) => UserPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await _navKeys[_selectedIndex].currentState!.maybePop(),
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _navigators,
        ),
        bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      ),
    );
  }

  Widget _bottomNavigationBar(int selectedIndex) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade200,
      unselectedItemColor: Colors.white70,
      selectedItemColor: Colors.white,
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedIndex,
      onTap: (int index) {
        setState(() {
          if (_selectedIndex != index) {
            _selectedIndex = index;
          } else {
            _navKeys[index].currentState!.popUntil((route) => route.isFirst);
          }
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/icons/home_filled.png"),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/icons/search_filled.png"),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/icons/reels_outline.png"),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/icons/shop_outline.png"),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/icons/user_filled.png"),
          ),
          label: '',
        ),
      ],
    );
  }
}
