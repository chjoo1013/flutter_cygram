import 'package:flutter/material.dart';

class UserImageTap extends StatefulWidget {
  const UserImageTap({Key? key}) : super(key: key);

  @override
  _UserImageTapState createState() => _UserImageTapState();
}

class _UserImageTapState extends State<UserImageTap>
    with SingleTickerProviderStateMixin {
  late TabController _usertabController;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _usertabController = new TabController(length: 2, vsync: this);
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        SizedBox(height: 20),
        _buildTabBarView(),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _usertabController,
      tabs: [
        Container(
          height: 30,
          width: 30,
          child: Tab(
            icon: Image.asset('assets/icons/GridView.png'),
          ),
        ),
        Container(
          height: 30,
          width: 30,
          child: Tab(
            icon: Image.asset('assets/icons/User1_.png'),
          ),
        ),
      ],
    );
  }

  Widget _buildTabBarView() {
    return Container(
      height: 370,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          child: TabBarView(
            controller: _usertabController,
            children: [
              GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/yhjoo/6797.JPEG',
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/yhjoo/8502.JPEG',
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/yhjoo/8592.JPEG',
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/yhjoo/5602.JPEG',
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  '게시물 없음',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
