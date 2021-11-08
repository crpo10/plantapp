import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plantapp/src/controller/login_controller.dart';
import 'package:plantapp/src/utils/main_colors.dart';
import 'package:plantapp/src/widgets/custom_button.dart';

class LoginButtonsWidget extends StatelessWidget {
  const LoginButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        height: height * 0.9,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            SizedBox(height: height * 0.1),
            Text(
              'Planty',
              style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.06,
              ),
            ),
            Text(
              'Increase your natural beauty',
              style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.025,
              ),
            ),
            SizedBox(height: height * 0.4),
            _LoginButtons(),
            Spacer(),
            Text(
              'Terms of Services',
              style: TextStyle(fontSize: height * 0.018),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginButtons extends StatelessWidget {
  const _LoginButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<LoginController>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: CustomButton(
            colorText: Colors.white,
            color: MainColors.dark.withOpacity(.5),
            texto: 'Log in',
            width: 300,
            onPressed: () {
              c.changeIndex(1);
            },
          ),
        ),
        CustomButton(
          colorText: Colors.black,
          color: Colors.white.withOpacity(.7),
          onPressed: () {
            c.changeIndex(2);
          },
          texto: 'Sign Up',
          width: 300,
        ),
      ],
    );
  }
}
