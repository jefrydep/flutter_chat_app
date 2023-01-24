import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;

  final String title;
  final Color colorButton;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.colorButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 2,
        shape: const StadiumBorder(),
       
        onPressed: onPressed(),
        child: Container(
          decoration: BoxDecoration(
              color:colorButton, borderRadius: BorderRadius.circular(20)),
          height: 39,
          child: Center(
            child: Text(

              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
