import 'package:flutter/material.dart';
import 'package:plantapp/src/widgets/background_widget.dart';
import 'package:plantapp/src/widgets/form_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgroundImage(),
        LoginFormWidget(),
      ],
    ));
  }
}
