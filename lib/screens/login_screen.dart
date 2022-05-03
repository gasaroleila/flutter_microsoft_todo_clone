import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/services/auth_methods.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class LoginScreen extends StatelessWidget {
  final AuthMethods _authMethods = AuthMethods();
  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.72,
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 50,
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Microsoft ToDo Clone',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.72,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Palette.mainBlue,
                      elevation: 10,
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white)),
                  onPressed: () async {
                    bool res = await _authMethods.signInWithGoogle(context);
                    if (res) {
                      Navigator.pushNamed(context, '/');
                    }
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/images/microsoft.png'),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Sign In with Microsoft',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
