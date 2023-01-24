 import 'package:flutter/material.dart';
import 'package:messenger_app_flutter/ui/widgets/custom_input.dart';
import 'package:messenger_app_flutter/ui/widgets/custom_labels.dart';
import 'package:messenger_app_flutter/ui/widgets/custom_logo.dart';

import '../widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffF2F2F2),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  const [
              CustomLogo(
                title: 'Register',
              ),
              _Form(),
              CustomLabels(
                route: 'login',
                title: '¿Ya tienes una cuenta?',
                subtitle: '¡Ingresa ahora!',
              ),
              Text(
                'Terminos y condiciones de uso',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({
    Key? key,
  }) : super(key: key);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailText = TextEditingController();
  final passwordText = TextEditingController();
  final nameText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: Column(
        children: [
          CustomInput(
            hintext: 'Jefry Palomino',
            label: 'Name',
            icon: const Icon(Icons.people_alt_rounded),
            keyboardType: TextInputType.emailAddress,
            textEditin: nameText,
          ),
          CustomInput(
            hintext: 'Jefrydep@gmail.com',
            label: 'Email',
            icon: const Icon(Icons.email),
            keyboardType: TextInputType.emailAddress,
            textEditin: emailText,
          ),
          CustomInput(
            
            hintext: '***********',
            label: 'Password',
            icon: const Icon(Icons.lock),
            keyboardType: TextInputType.visiblePassword,
            textEditin: passwordText,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            colorButton: Colors.blue,
            title: 'Register',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
