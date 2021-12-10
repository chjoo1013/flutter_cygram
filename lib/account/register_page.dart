import 'package:flutter/material.dart';
import 'package:flutter_cygram/dashboard/dashboard_page.dart';
import 'package:flutter_cygram/login/methods.dart';
import 'package:flutter_cygram/login/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(
              child: Container(
                height: 35,
                width: 35,
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 170),
                      Container(
                        child: Text(
                          '회원가입',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextField(
                          controller: _name,
                          decoration: InputDecoration(
                            hintText: '사용자 이름',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _email,
                          decoration: InputDecoration(
                            hintText: '이메일',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: TextField(
                          obscureText: true,
                          controller: _password,
                          decoration: InputDecoration(
                            hintText: '비밀번호',
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_name.text.isNotEmpty &&
                                _email.text.isNotEmpty &&
                                _password.text.isNotEmpty) {
                              setState(() {
                                isLoading = true;
                              });

                              createAccount(
                                      _name.text, _email.text, _password.text)
                                  .then((user) {
                                if (user != null) {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => DashboardPage()));
                                  print("회원가입 완료");
                                } else {
                                  print("회원가입 실패");
                                }
                              });
                            } else {
                              print("Please enter Fields");
                            }
                          },
                          child: Text(
                            "회원가입",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                          onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => LoginPage()),
                              ),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
