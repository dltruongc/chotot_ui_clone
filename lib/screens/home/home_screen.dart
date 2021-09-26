import 'package:choto_clone/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFCCCCCC),
        appBar: buildAppBar(),
        body: HomeBody(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Container(
        height: 38,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: TextField(
          decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: 'Tìm kiếm trên Chợ Tốt',
            prefixIcon: Icon(Icons.search_outlined),
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.2),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(icon: Icon(Icons.message_outlined), onPressed: () {}),
      ],
    );
  }
}
