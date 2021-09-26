import 'package:choto_clone/constants.dart';
import 'package:choto_clone/screens/home/components/header_section_image_slider.dart';
import 'package:choto_clone/screens/home/components/seller_functions_list.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final Iterable<int> assetImages = Iterable.generate(9, (i) => i + 1);

  HeaderSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          HeaderImageSlider(assetImages: assetImages),
          SellerFunctionsList(),
        ],
      ),
    );
  }
}
