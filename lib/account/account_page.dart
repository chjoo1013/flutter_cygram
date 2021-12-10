import 'package:flutter/material.dart';
import 'package:flutter_cygram/account/register_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        title: Text(
          '전화번호 또는 이메일 입력',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        bottom: TabBar(
          labelColor: Colors.blue,
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                '전화번호',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Tab(
              child: Text(
                '이메일',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          height: 200,
          child: TabBarView(
            controller: _tabController,
            children: [
              Column(
                children: [
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: '전화번호'),
                    ),
                  ),
                  SizedBox(height: 20),
                  buildNextButton(),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: '이메일'),
                    ),
                  ),
                  SizedBox(height: 20),
                  buildNextButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNextButton() {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        child: const Text(
          '다음',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
