import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/custom_button.dart';
import 'package:rooda_apps/widgets/input_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 70.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 75.w),
                child: const Image(
                  image: AssetImage(
                    'assets/images/img_logo_rooda.png',
                  ),
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Text(
                'Login',
                style: heading1TextStyle.copyWith(
                  color: darkColor,
                ),
              ),
              Text(
                'Masuk dengan akun Anda',
                style: normalTextStyle.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: verticalSpaceBig,
              ),
              InputForm(
                id: 'email',
                title: 'E-mail',
                hintText: 'Ketikkan e-mail Anda',
              ),
              InputForm(
                id: 'password',
                title: 'Password',
                hintText: 'Ketikkan kata sandi Anda',
              ),
              SizedBox(
                height: verticalSpaceSmall,
              ),
              CustomButton(
                margin: 50.w,
                title: 'Login',
              ),
              SizedBox(
                height: verticalSpaceSmall,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum punya akun?',
                    style: normalTextStyle.copyWith(
                      color: darkColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/signupPage');
                    },
                    child: Text(
                      'Daftar',
                      style: heading3TextStyle.copyWith(
                        color: darkColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
