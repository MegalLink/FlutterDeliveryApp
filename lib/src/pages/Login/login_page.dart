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
            height: MediaQuery.of(context).size.height * 0.4,
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
