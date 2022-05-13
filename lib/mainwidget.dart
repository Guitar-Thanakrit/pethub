// ignore_for_file: avoid_print, duplicate_ignore, prefer_const_constructors

// import 'dart:js';
import 'package:badges/badges.dart';
import 'package:adoptehub/authenpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
      

AppBar appbar() {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: Colors.transparent,
    elevation: 0,
    
    leading: GestureDetector(
      onTap: () {
        print('Drawer');
      },
      child: Icon(
        Icons.sort,
        color: Colors.grey[800],
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(
          right: 16,
        ),
        child: Badge(
          badgeContent: Text('600'),
          child: Icon(
            Icons.notifications_none,
            color: Colors.grey[800],
          ),
          position: BadgePosition.bottomStart(),
        ),
      ),
    ],
  );
}

Padding searchinput() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: Colors.grey[100],
        contentPadding: const EdgeInsets.only(
          right: 30,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(right: 16.0, left: 24.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
    ),
  );
}

Expanded categoryPet(
    String category, String total, Color colorCircle, String images) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        // ignore: avoid_print
        print(category);
      },
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorCircle, //color circle
              ),
              child: Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    images,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  "total of " + total,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Builder navbar() {
  return Builder(
    builder: (context) {
      return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 20,
          ),
          child: GNav(
            textStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.black12,
            gap: 8,
            padding: const EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  print('Home');
                },
              ),
              GButton(
                icon: Icons.favorite_outline,
                text: 'Like',
                onPressed: () {
                  print('Like');
                },
              ),
              GButton(
                icon: Icons.pets_sharp,
                text: 'Adopte',
                onPressed: () {
                  print('Message');
                },
              ),
              GButton(
                icon: Icons.messenger_outline_rounded,
                text: 'Chat',
                onPressed: () {
                  print('Message');
                },
              ),
              GButton(
                icon: Icons.person_outlined,
                text: 'Profile',
                onPressed: () {
                   int checkstatus = 2;
                  // ignore: unused_local_variable
                  if (checkstatus == 2) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Authen() ));
                    print(checkstatus);
                  } else{
                    print('non value');
                  }
                
                },
                
              ),
            ],
          ),
        ),
      );
    }
  );
}
