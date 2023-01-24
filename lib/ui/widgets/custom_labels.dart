 import 'package:flutter/material.dart';

class CustomLabels extends StatelessWidget {
  final String route;
  final String title;
  final String subtitle;
  const CustomLabels({
    Key? key, 
    required this.route, 
    required this.title, 
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Text(
          title,
          style: const TextStyle(color: Colors.black26),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacementNamed(context,route);
          },
          child: Text(
             subtitle,
            style: TextStyle(
                color: Colors.blue[600],
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        )
      ],
    );
  }
}
