import 'package:beauty_ecommerce/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class SharedListTile extends StatelessWidget {
  const SharedListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.leading,
    required this.trialing,
  });

  final String title;
  final String subTitle;
  final Widget leading;
  final IconData trialing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
        ),
        child:
          leading,
        
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.normal,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: Icon(
        trialing,
        size: 25,
      ),
    );
  }
}
