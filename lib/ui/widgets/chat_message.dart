
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final AnimationController animationControler ;
  final String texto;
  final String uid;
  const ChatMessage({
    Key? key, 
    required this.texto, 
    required this.uid, 
    required this.animationControler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationControler,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(parent: animationControler, curve: Curves.easeOut),
        child: Container(
          child: uid == '123'
          ? _myMessage()
          : _notMyMessage()
          
        ),
      ),
    );
  }


Widget _myMessage(){
  return Align(
    alignment: Alignment.centerRight,
    child: Container(
      
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 5,left: 50,right: 10),
      decoration: BoxDecoration(
        color: const Color(0xff4d9ef6),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(texto,style: const TextStyle(color: Colors.white),),
    ));

}

Widget _notMyMessage(){
 return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 5,left: 5,right: 50),
      decoration: BoxDecoration(
        color: const Color(0xffe4e5e8),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(texto,style: const TextStyle(color: Colors.black),),
    ));

}

}