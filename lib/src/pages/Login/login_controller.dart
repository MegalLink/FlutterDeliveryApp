import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  void goToRegisterPage() {
    Get.toNamed('/register');
  }

  void login() {
    String email = emailCtrl.text.trim();
    String password = passwordCtrl.text.trim();

    if (isValidForm(email, password)) {
      Get.snackbar('Login Data', 'Email $email , Password $password');
    }
  }

  bool isValidForm(String email, String password) {
    if (email.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el email');
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Formulario no valido', 'Debes ingresar un email valido');
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el password');
      return false;
    }

    return true;
  }
}
