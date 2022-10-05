import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData tabIcon;
  final bool? isActive;

  TabItem(this.tabIcon, this.isActive);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Icon(
          tabIcon,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                width: 2,
                color: isActive == true ? Colors.black : Colors.grey[200]!),
          ),
        ),
      ),
    );
  }
}
