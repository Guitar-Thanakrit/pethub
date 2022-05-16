// import 'dart:ffi';

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'authenwidget.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  final formkey = GlobalKey<FormState>();
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return Scaffold(
      appBar: appbarAuthen(context,'Sign in'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'Hello!',
                style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'welcome back!',
                style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'Sign to Continue',
                style: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
            ),
            Form(
              key: formkey,
              child: Container(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textFieldEmail(),
                    const Padding(padding: EdgeInsets.all(10)),
                    textFieldPassword(),
                    const Padding(padding: EdgeInsets.all(15)),
                    loginButton(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('go forgot password page');
                          },
                          child: const Text(
                            'Forgot password?',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            activeColor: Colors.transparent,
                            checkColor: Colors.green,
                            hoverColor: Colors.red[200],
                            // focusNode: FocusNode(),
                            value: _checked,
                            onChanged: (value) {
                              setState(() {
                                _checked = value!;
                              });
                            }),
                        const Expanded(
                          child: Text(
                            'Remember me and keep my session stated By registering you accept our Conditions',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(20)),
                    googleLoginButton(),
                    const Padding(padding: EdgeInsets.all(10)),
                    facebookLoginButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
