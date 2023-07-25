import 'package:delivery_app/src/pages/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/form/form_container.dart';
import '../../widgets/form/form_field_container.dart';
import '../../widgets/form/form_title.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.30,
            color: Colors.amber,
          ),
          const Column(
            children: [
              _ImageCover(),
            ],
          ),
          _RegisterForm()
        ],
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());
  _RegisterForm();

  @override
  Widget build(BuildContext context) {
    return FormContainer(marginSeparation: 0.20, children: [
      const FormTitle(title: 'Ingresa esta información'),
      FormFieldContainer(
          child: TextField(
              controller: controller.emailCtrl,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: 'Correo electrónico',
                  prefixIcon: Icon(Icons.email)))),
      FormFieldContainer(
          child: TextField(
              controller: controller.nameCtrl,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  hintText: 'Nombre', prefixIcon: Icon(Icons.person)))),
      FormFieldContainer(
          child: TextField(
              controller: controller.lastNameCtrl,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  hintText: 'Apellido',
                  prefixIcon: Icon(Icons.person_outline)))),
      FormFieldContainer(
          child: TextField(
              controller: controller.phoneCtrl,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  hintText: 'Telefono', prefixIcon: Icon(Icons.phone)))),
      FormFieldContainer(
          child: TextField(
              controller: controller.passwordCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)))),
      FormFieldContainer(
          child: TextField(
              controller: controller.confirmPasswordCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)))),
      FormFieldContainer(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: ElevatedButton(
              onPressed: () => controller.register(),
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15)),
              child: const Text(
                'REGISTRARSE',
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
        child: GestureDetector(
          onTap: () {},
          child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              backgroundImage: AssetImage('assets/img/user_profile.png')),
        ));
  }
}
