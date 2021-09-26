import 'package:choto_clone/constants.dart';
import 'package:choto_clone/screens/home/components/seller_function_item_with_badge.dart';
import 'package:flutter/material.dart';

class SellerFunctionsList extends StatelessWidget {
  const SellerFunctionsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        children: [
          SellerFunctionItemWithBadge(
            icon: Icons.assignment_outlined,
            title: 'Đơn hàng đặt cọc',
            isNew: true,
          ),
          SellerFunctionItemWithBadge(
            icon: Icons.present_to_all,
            title: 'Đăng tin cho tặng',
            isNew: true,
            bgColor: Colors.blueGrey,
          ),
          SellerFunctionItemWithBadge(
            icon: Icons.money,
            title: 'Định giá bán xe',
            isNew: true,
            bgColor: Colors.orange,
          ),
          SellerFunctionItemWithBadge(
            icon: Icons.padding,
            title: 'Nạp đồng tốt',
            bgColor: Colors.yellow,
          ),
          SellerFunctionItemWithBadge(
            icon: Icons.star,
            title: 'Chợ tốt ưu tiên',
          ),
          SellerFunctionItemWithBadge(
            icon: Icons.favorite,
            title: 'Tin đăng đã lưu',
            bgColor: Colors.red,
          ),
          SellerFunctionItemWithBadge(
            icon: Icons.circle,
            title: 'Vòng quay may mắn',
          ),
          SellerFunctionItemWithBadge(
            icon: Icons.bookmark,
            title: 'Tìm kiếm đã lưu',
            bgColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
