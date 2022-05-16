import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

OutlinedButton googleLoginButton() {
  return OutlinedButton(
    onPressed: () {
      // ignore: avoid_print
      print('google login');
    },
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(15),
      primary: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    child: Expanded(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/google.png",
              height: 20,
              width: 20,
              fit: BoxFit.fitHeight,
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'Login with Google',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    ),
  );
}
OutlinedButton facebookLoginButton() {
  return OutlinedButton(
    onPressed: () {
            // ignore: avoid_print
      print('google Facebook');
    },
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(15),
      primary: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    child: Expanded(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/facebook.png",
              height: 25,
              width: 25,
              fit: BoxFit.fitHeight,
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'Login with Facebook',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    ),
  );
}

  AppBar appbarAuthen(BuildContext context,String headApp) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(headApp,style: const TextStyle(color: Colors.black),),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);

          print('Back');
        },
        child: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
      ),
    );
  }

  ElevatedButton loginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        primary: const Color.fromARGB(255, 124, 174, 214),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: () {
        print('Login');
      },
      child: const Expanded(
        child: Center(
          child: Text('Login my account'),
        ),
      ),
    );
  }

  TextFormField textFieldPassword() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          // hintText: 'cat.adopted@mail.com',
          suffixIcon: Icon(Icons.task_rounded)),
      validator: (value) {
        if (value!.isEmpty ||
            !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                .hasMatch(value)) {
          return 'Error Password';
        } else {
          return null;
        }
      },
    );
  }

  TextFormField textFieldEmail() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          hintText: 'cat.adopted@mail.com',
          suffixIcon: Icon(Icons.task_rounded)),
      validator: (value) {
        if (value!.isEmpty ||
            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value)) {
          return 'Error message';
        } else {
          return null;
        }
      },
    );
  }