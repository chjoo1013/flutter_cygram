import 'package:flutter/material.dart';

import 'package:flutter_cygram/home/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                children: [
                  Text(
                    'Cygram',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 110),
                  Container(
                    child: IconButton(
                        icon: Image.asset("assets/icons/plus_outline.png"),
                        onPressed: () {}),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: IconButton(
                        icon: Image.asset("assets/icons/love_outline.png"),
                        onPressed: () {}),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: IconButton(
                        icon: Image.asset("assets/icons/share_outline.png"),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          icon: Image.asset("assets/icons/user_filled.png"),
                          onPressed: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '내 스토리',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 370,
                          child: Divider(
                            // 프로필 영역과 분리
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildMainText(),
          SizedBox(height: 30),
          Profile(),
        ],
      ),
    );
  }

  Widget _buildMainText() {
    return Column(
      children: [
        Text(
          'Cygram에 오신 것을 환영합니다.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '다른사람을 팔로우하면 피드에서 상대방의 사진과 동영상을',
          style: TextStyle(fontSize: 15),
        ),
        Text(
          '볼 수 있습니다.',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
