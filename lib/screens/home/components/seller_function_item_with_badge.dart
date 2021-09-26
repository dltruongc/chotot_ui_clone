import 'package:choto_clone/constants.dart';
import 'package:flutter/material.dart';

class SellerFunctionItemWithBadge extends StatelessWidget {
  final String title;
  final bool isNew;
  final IconData icon;
  final Color bgColor;

  const SellerFunctionItemWithBadge(
      {Key key,
      this.title,
      this.icon,
      this.isNew = false,
      this.bgColor = Colors.green})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: SizedBox(
              width: 50,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: bgColor,
                    ),
                    child:
                        Icon(icon ?? Icons.help_outline, color: Colors.white),
                  ),
                  SizedBox(height: 6),
                  Text(
                    title,
                    style: TextStyle(fontSize: kFontSize * 0.6),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          isNew
              ? Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: Text(
                      'Mới',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: kFontSize * 0.6,
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
