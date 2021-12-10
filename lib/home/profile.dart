import 'package:flutter/material.dart';
import 'package:flutter_cygram/user/user_profile_page.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 310,
          width: 310,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => UserProfilePage()),
                ),
                child: Container(
                  height: 310,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/yhjoo/yhjoo_main.png'),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'yhjoo11',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '주연호',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/yhjoo/6797.JPEG',
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/yhjoo/8502.JPEG',
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/yhjoo/8592.JPEG',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/yhjoo/17969.JPEG'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'shjoo17',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '주승호',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/yhjoo/8924.JPEG',
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/yhjoo/9771.JPEG',
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/yhjoo/11068.JPEG',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/yhjoo/IMG_6259.JPG'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'arjoo20',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '주아린',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/yhjoo/IMG_6230.JPG',
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/yhjoo/IMG_6234.JPG',
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/yhjoo/IMG_6239.JPG',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
