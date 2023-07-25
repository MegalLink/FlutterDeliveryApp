import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmPasswordCtrl = TextEditingController();

  void register() {
    String email = emailCtrl.text.trim();
    String name = nameCtrl.text.trim();
    String lastName = lastNameCtrl.text.trim();
    String phone = phoneCtrl.text.trim();
    String password = passwordCtrl.text.trim();
    String confirmPassword = confirmPasswordCtrl.text.trim();

    String errorMessage =
        _checkErrors(email, name, lastName, phone, password, confirmPassword);

    if (errorMessage.isNotEmpty) {
      Get.snackbar('Formulario no valido', errorMessage);
    } else {
      Get.snackbar('Register Data', 'Email $email , ,Password $password');
    }
  }

  String _checkErrors(email, name, lastName, phone, password, confirmPassword) {
    if (email.isEmpty) {
      return 'Debes ingresar el email';
    }

    if (!GetUtils.isEmail(email)) {
      return 'Debes ingresar un email valido';
    }

    if (name.isEmpty) {
      return "EL campo nombre no puede ser vacio";
    }

    if (lastName.isEmpty) {
      return "EL campo apellido no puede ser vacio";
    }

    if (phone.isEmpty) {
      return "EL campo telefono no puede ser vacio";
    }

    if (password.isEmpty) {
      return "EL campo password no puede ser vacio";
    }

    if (password.length < 6) {
      return "La longitud del campo password debe ser mayor que 6";
    }

    if (confirmPassword != password) {
      return "La confirmación del password no coincide";
    }

    return '';
  }
}
