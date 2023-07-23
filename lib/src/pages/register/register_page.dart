import 'package:flutter/material.dart';

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
          const _RegisterForm()
        ],
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    return FormContainer(marginSeparation: 0.20, children: [
      const FormTitle(title: 'Ingresa esta información'),
      const FormFieldContainer(
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Correo electrónico',
                  prefixIcon: Icon(Icons.email)))),
      const FormFieldContainer(
          child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Nombre', prefixIcon: Icon(Icons.person)))),
      const FormFieldContainer(
          child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Apellido',
                  prefixIcon: Icon(Icons.person_outline)))),
      const FormFieldContainer(
          child: TextField(
              keyboardType: TextInputType.phone,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Telefono', prefixIcon: Icon(Icons.phone)))),
      const FormFieldContainer(
          child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)))),
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
