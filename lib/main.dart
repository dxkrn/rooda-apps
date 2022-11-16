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
import 'package:rooda_apps/pages/riwayat%20transaksi/riwayat_pembelian_detail_page.dart';
import 'package:rooda_apps/pages/riwayat%20transaksi/riwayat_transaksi_page.dart';
import 'package:rooda_apps/pages/sparepart/katalog_sparepart_page.dart';
import 'package:rooda_apps/pages/wishlist/wishlist_page.dart';
import 'package:rooda_apps/themes/themes.dart';

import 'pages/riwayat transaksi/riwayat_servis_detail_page.dart';

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
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/onboardingPage',
            page: () => const OnboardingPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/loginPage',
            page: () => const LoginPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/signupPage',
            page: () => const SignupPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE : MOTOR
          GetPage(
            name: '/katalogMotorPage',
            page: () => const KatalogMotorPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/detailMotorPage',
            page: () => const DetailMotorPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE: PEMESANAN
          GetPage(
            name: '/inputDataDiriPage',
            page: () => const InputDataDiriPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/paymentPage',
            page: () => const PaymentPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE: RIWAYAT TRANSAKSI
          GetPage(
            name: '/riwayatTransaksiPage',
            page: () => const RiwayatTransaksiPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/riwayatPembelianDetailPage',
            page: () => const RiwayatPembelianDetailPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/riwayatServisDetailPage',
            page: () => const RiwayatServisDetailPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE: Wishlist
          GetPage(
            name: '/wishlistPage',
            page: () => const WishlistPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE: Sparepart
          GetPage(
            name: '/katalogSparepartPage',
            page: () => const KatalogSparepartPage(),
            transition: Transition.fade,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),

          //NOTE: for bottom navbar only
          GetPage(
            name: '/navbarHomePage',
            page: () => const HomePage(),
            transition: Transition.fadeIn,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/navbarKatalogPage',
            page: () => const KatalogMotorPage(),
            transition: Transition.fadeIn,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/navbarRiwayatPage',
            page: () => const RiwayatTransaksiPage(),
            transition: Transition.fadeIn,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/navbarFavPage',
            page: () => const WishlistPage(),
            transition: Transition.fadeIn,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/navbarSettingPage',
            page: () => const HomePage(),
            transition: Transition.fadeIn,
            showCupertinoParallax: false,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
        ],
      ),
    );
  }
}
