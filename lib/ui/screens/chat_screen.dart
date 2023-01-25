
// import 'dart:io';


// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app_flutter/ui/widgets/chat_message.dart';
 
class ChatScreen  extends StatefulWidget {
  const ChatScreen ({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin{
List <ChatMessage> _messages = [
// ChatMessage(texto: 'hola como estas ?', uid: '123'),
// ChatMessage(texto: 'hola como estas ?', uid: '12345'),
// ChatMessage(texto: 'hola como estas ?', uid: '123'),
// ChatMessage(texto: 'hola como estas ?', uid: '435'),
// ChatMessage(texto: 'hola como estas ?', uid: '345'),
];

  final _textController = TextEditingController();
  final _focusNode = FocusNode();
    bool isWriting = false;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title:Column(

          children: const[
            CircleAvatar(
              radius: 12,
              child: Text('Te'),
              
            ),
            Text('Jefry Palomino',style: TextStyle(fontSize: 16),)
           
            
          ],
        ) ,
      ),
      body:Column(
        children: [
          
          Flexible(
            child: ListView.builder(
              itemCount: _messages.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => _messages[index],
              reverse: true,
              ), 
          ),
          const Divider(
            height: 1,
          ),
          _inputChat(),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }

    _inputChat() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.white,
              child:Row(
                children: [
                  Flexible(child: TextField(
                    controller: _textController,
                    onSubmitted:  _handleSubmit,
                    onChanged: (value){
                      if (value.isNotEmpty) {
                        setState(() {
                          isWriting = true;
                        });
                      }else{
                        setState(() {
                          isWriting = false;
                        });
                      }

                    },
                    decoration: const InputDecoration.collapsed(hintText: 'Enviar mensaje'),
                    focusNode: _focusNode,
                    
                  )),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 4),
                    // child:Platform.isIOS?
                    // CupertinoButton(child: Text('Enviar'), onPressed: (){


                    // })
                    // :Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      child: IconTheme(
                        data:const IconThemeData(
                          color: Colors.blue
                        ) ,
                        child: IconButton(
                          onPressed: isWriting?()=> _handleSubmit(_textController.text.trim()):null, icon: const Icon(Icons.send))),
                    // )
                    //  ,
                  )
                ],
              )  
            ),
    );
  }

  _handleSubmit (String message){
    if(message.isEmpty)return;
    
    // print(message);
    _textController.clear();
    _focusNode.requestFocus();

      final newMessage = ChatMessage(texto: message, uid: '123',animationControler: AnimationController(vsync: this,duration: const Duration(milliseconds: 400)),);
      _messages.insert(0,newMessage);
      newMessage.animationControler.forward();

    setState(() {
      isWriting= false;
    });
  }
  @override
  void dispose() {
    // TODO: implement socket
  for(ChatMessage message in _messages){
    message.animationControler.dispose();
  }

    super.dispose();
  }
  
}

 