import 'package:flutter/material.dart';
import 'package:flutter_cygram/User/user_image_tap.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yhjoo11'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/yhjoo/yhjoo_main.png'),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Text(
                        '주연호',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 60),
                _buildText1(),
                SizedBox(width: 35),
                _buildText2(),
                SizedBox(width: 35),
                _buildText3(),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildFollowButton(),
                SizedBox(width: 10),
                _buildMessageButton(),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: UserImageTap(),
          ),
        ],
      ),
    );
  }

  Widget _buildText1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Text(
            '16',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            '게시물',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildText2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Text(
            '38',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            '팔로워',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildText3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Text(
            '25',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            '팔로잉',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFollowButton() {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      child: InkWell(
        child: Text(
          '팔로우',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          print('버튼클릭됨');
        },
      ),
    );
  }

  Widget _buildMessageButton() {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: InkWell(
        child: Text(
          '메세지',
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          print('버튼클릭됨');
        },
      ),
    );
  }
}
