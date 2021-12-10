import 'package:flutter/material.dart';
import 'package:flutter_cygram/account/register_page.dart';
import 'package:flutter_cygram/dashboard/dashboard_page.dart';
import 'package:flutter_cygram/login/methods.dart';
import 'package:flutter_cygram/logo/cygram_logo.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 170),
                      CygramLogo(),
                      SizedBox(height: 20),
                      _buildLoginTextField(),
                      SizedBox(height: 30),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_email.text.isNotEmpty &&
                                _password.text.isNotEmpty) {
                              setState(() {
                                isLoading = true;
                              });

                              logIn(_email.text, _password.text).then((user) {
                                if (user != null) {
                                  print("Login Sucessfull");
                                  setState(() {
                                    isLoading = false;
                                  });
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => DashboardPage()));
                                } else {
                                  print("로그인 실패");
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              });
                            } else {
                              print("Please fill form correctly");
                            }
                          },
                          child: Text(
                            "로그인",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("계정이 없으신가요?"),
                          SizedBox(width: 10),
                          TextButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => RegisterPage()),
                            ),
                            child: Text("회원가입"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget _buildLoginTextField() {
    return Center(
      child: Column(
        children: [
          Container(
            child: TextFormField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: '전화번호 또는 이메일 입력',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: TextFormField(
              controller: _password,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '비밀번호',
              ),
              obscureText: true,
            ),
          ),
        ],
      ),
    );
  }
}
