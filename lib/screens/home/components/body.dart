import 'package:choto_clone/screens/home/components/header_section.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSection(),
          HeaderSection(),
        ],
      ),
    );
  }
}
