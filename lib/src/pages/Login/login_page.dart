import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('¿No tienes cuenta?',
                  style: TextStyle(color: Colors.black, fontSize: 17)),
              SizedBox(
                width: 7,
              ),
              Text(
                'Registrate aqui',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
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
    return SingleChildScrollView(
        child: Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.35, left: 50, right: 50),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
          ]),
      height: MediaQuery.of(context).size.height * 0.50,
      child: Column(children: [
        Container(
            margin: const EdgeInsets.only(top: 40, bottom: 50),
            child: Text(
              'Ingresa esta información'.toUpperCase(),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            )),
        Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Correo electrónico',
                    prefixIcon: Icon(Icons.email)))),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Contraseña', prefixIcon: Icon(Icons.lock))),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15)),
              child: const Text(
                'LOGIN',
                style: TextStyle(color: Colors.black),
              )),
        )
      ]),
    ));
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
