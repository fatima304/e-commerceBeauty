
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
  final IconData leading;
  final IconData trialing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 203, 202, 202),
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
        ),
        child: Icon(
          leading,
          size: 35,
        ),
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
