import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plantapp/src/controller/login_controller.dart';
import 'package:plantapp/src/pages/home_page.dart';

import 'package:plantapp/src/utils/main_colors.dart';
import 'package:plantapp/src/widgets/custom_button.dart';
import 'package:plantapp/src/widgets/input_widgets.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<LoginController>();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SafeArea(
          child: Container(
            height: height * 0.1,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                    onPressed: () {
                      c.changeIndex(0);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: height * 0.04,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            'Planty',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.06,
            ),
          ),
        ),
        Container(
          width: width * 0.9,
          height: height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withOpacity(0.2),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InputField(
                  label: 'Email',
                  icon: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InputField(
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                  label: 'Password',
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomButton(
                  color: MainColors.darkgreen.withOpacity(0.6),
                  onPressed: () {
                    Get.to(() => HomePage());
                  },
                  colorText: Colors.white,
                  texto: 'Log In',
                ),
              )
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Text(
            'Terms of Services',
            style: TextStyle(fontSize: height * 0.018),
          ),
        ),
      ],
    );
  }
}
