import 'package:delivery_app/src/pages/login/login_controller.dart';
import 'package:delivery_app/src/widgets/form/form_container.dart';
import 'package:delivery_app/src/widgets/form/form_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/form/form_field_container.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            color: Colors.amber,
          ),
          const Column(
            children: [
              _ImageCover(),
              Text(
                'DELIVERY APP',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
          const _LoginForm()
        ],
      ),
      bottomNavigationBar: Container(
          height: 50,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿No tienes cuenta?',
                  style: TextStyle(color: Colors.black, fontSize: 17)),
              const SizedBox(
                width: 7,
              ),
              GestureDetector(
                onTap: () => controller.goToRegisterPage(),
                child: const Text(
                  'Registrate aqui',
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              )
            ],
          )),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return FormContainer(marginSeparation: 0.35, children: [
      const FormTitle(title: 'Ingresa esta información'),
      const FormFieldContainer(
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Correo electrónico',
                  prefixIcon: Icon(Icons.email)))),
      const FormFieldContainer(
          child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)))),
      FormFieldContainer(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15)),
              child: const Text(
                'LOGIN',
                style: TextStyle(color: Colors.black),
              ))),
    ]);
  }
}

class _ImageCover extends StatelessWidget {
  const _ImageCover();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(top: 20, bottom: 15),
        child: SafeArea(
          child: Image.asset(
            'assets/img/delivery.png',
            width: 130,
            height: 130,
          ),
        ));
  }
}
