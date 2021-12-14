import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantapp/src/controller/login_controller.dart';
import 'package:plantapp/src/utils/change_status_light.dart';
import 'package:plantapp/src/widgets/background_widget.dart';
import 'package:plantapp/src/widgets/login_buttons_widget.dart';
import 'package:plantapp/src/widgets/login_form_widget.dart';
import 'package:plantapp/src/widgets/signup_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusLight();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: GetBuilder<LoginController>(
          builder: (_) => Stack(
            children: [
              BackgroundImage(),
              (_.index == 1)
                  ? FadeInUp(
                      child: LoginFormWidget(),
                    )
                  : (_.index == 2)
                      ? FadeInUp(child: SingUpForm())
                      : FadeIn(child: LoginButtonsWidget())
            ],
          ),
        ));
  }
}
