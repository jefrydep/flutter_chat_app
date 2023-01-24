

import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController textEditin;
  final String hintext;
  final String label;
  final Icon icon;
  final TextInputType keyboardType;
  const CustomInput({
    Key? key,
    required this.hintext,
    required this.label,
    required this.icon, 
    required this.keyboardType, 
    required this.textEditin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.02),
                offset: const Offset(0.2, 5),
                blurRadius: 4)
          ]),
      child:   TextField(
        
        
        controller:textEditin ,
        autocorrect: false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          

            icon: icon,
            border: InputBorder.none,
            hintText:hintext,
            label: Text(label)),
      ),
    );
  }
}