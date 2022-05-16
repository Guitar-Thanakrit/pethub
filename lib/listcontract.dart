import 'package:flutter/material.dart';

import 'authenwidget.dart';
import 'mainwidget.dart';
import 'model/datatest.dart';

class ListChat extends StatefulWidget {
  const ListChat({Key? key}) : super(key: key);

  @override
  State<ListChat> createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarAuthen(context, 'Message'),
      body: ListView.builder(
        itemCount: dateTest.length,
        itemBuilder: (context, i) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://mpics.mgronline.com/pics/Images/563000009086001.JPEG", ),
                ),
                title: Text(dateTest[i],),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: navbar(),
    );
  }
}
