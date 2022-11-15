import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:rooda_apps/pages/auth/login_page.dart';
import 'package:rooda_apps/pages/auth/signup_page.dart';
import 'package:rooda_apps/pages/home_page.dart';
import 'package:rooda_apps/pages/motor/detail_motor_page.dart';
import 'package:rooda_apps/pages/motor/katalog_motor_page.dart';
import 'package:rooda_apps/pages/onboarding_page.dart';
import 'package:rooda_apps/pages/pemesanan/input_data_diri_page.dart';
import 'package:rooda_apps/pages/pemesanan/payment_page.dart';
import 'package:rooda_apps/pages/riwayat%20transaksi/riwayat_transaksi_page.dart';
import 'package:rooda_apps/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/',
            page: () => const HomePage(),
          ),
          GetPage(
            name: '/onboardingPage',
            page: () => const OnboardingPage(),
          ),
          GetPage(
            name: '/loginPage',
            page: () => const LoginPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/signupPage',
            page: () => const SignupPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE : MOTOR
          GetPage(
            name: '/katalogMotorPage',
            page: () => const KatalogMotorPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/detailMotorPage',
            page: () => const DetailMotorPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE: PEMESANAN
          GetPage(
            name: '/inputDataDiriPage',
            page: () => const InputDataDiriPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/paymentPage',
            page: () => const PaymentPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE: RIWAYAT TRANSAKSI
          GetPage(
            name: '/riwayatTransaksiPage',
            page: () => const RiwayatTransaksiPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
        ],
      ),
    );
  }
}
