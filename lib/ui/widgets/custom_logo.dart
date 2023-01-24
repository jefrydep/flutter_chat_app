import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final String title;
  const CustomLogo({
    Key? key, 
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Image.asset(
            'assets/tag-logo.png',
            height: 180,
          ),
          const SizedBox(
            height: 20,
          ),
            Text(
             title,
            style: const TextStyle(fontSize: 38),
          )
        ],
      ),
    );
  }
}
