import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rooda_apps/themes/themes.dart';
import 'package:rooda_apps/widgets/custom_button.dart';
import 'package:rooda_apps/widgets/dialog_box.dart';
import 'package:rooda_apps/widgets/input_form.dart';

enum JenisKelamin { L, P }

class InputDataDiriPage extends StatefulWidget {
  const InputDataDiriPage({super.key});

  @override
  State<InputDataDiriPage> createState() => _InputDataDiriPageState();
}

class _InputDataDiriPageState extends State<InputDataDiriPage> {
  JenisKelamin? _gender = JenisKelamin.L;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: SizedBox(
          width: 40.w,
          height: 40.w,
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Image(
              image: AssetImage('assets/icons/icon_back.png'),
            ),
          ),
        ),
        title: Text(
          'Pesanan',
          style: heading1TextStyle,
        ),
      ),
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: verticalSpaceBig,
                    ),
                    Text(
                      'Input Data Diri',
                      style: heading1TextStyle.copyWith(color: darkColor),
                    ),
                    SizedBox(
                      height: verticalSpaceBig,
                    ),
                    InputForm(
                      id: 'nama',
                      title: 'Nama Lengkap',
                      hintText: 'Nama lengkap Anda',
                    ),
                    InputForm(
                      id: 'nik',
                      title: 'NIK',
                      hintText: 'NIK sesuai KTP',
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Jenis Kelamin',
                        style: heading3TextStyle.copyWith(color: darkColor),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: (deviceWidth - 48.w) / 2,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 24.w,
                                height: 24.w,
                                child: Radio<JenisKelamin>(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => darkColor),
                                  value: JenisKelamin.L,
                                  groupValue: _gender,
                                  onChanged: (JenisKelamin? value) {
                                    setState(() {
                                      _gender = value;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'Laki-laki',
                                style:
                                    normalTextStyle.copyWith(color: darkColor),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (deviceWidth - 48.w) / 2,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 24.w,
                                height: 24.w,
                                child: Radio<JenisKelamin>(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => darkColor),
                                  value: JenisKelamin.P,
                                  groupValue: _gender,
                                  onChanged: (JenisKelamin? value) {
                                    setState(() {
                                      _gender = value;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'Perempuan',
                                style:
                                    normalTextStyle.copyWith(color: darkColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: verticalSpaceSmall,
                    ),
                    InputForm(
                      id: 'tgl_lahir',
                      title: 'Tanggal Lahir',
                      hintText: 'Tanggal lahir Anda',
                    ),
                    InputForm(
                      id: 'telp',
                      title: 'Telepon',
                      hintText: 'Nomor Telepon / HP',
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alamat',
                          style: heading3TextStyle.copyWith(
                            color: darkColor,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          // width: 250.w,
                          height: 100.w,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              width: 1,
                              color: darkColor,
                            ),
                            // color: navbarColor,
                          ),
                          child: Center(
                            child: TextField(
                              maxLines: 4,
                              style: normalTextStyle.copyWith(
                                color: darkColor,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: normalTextStyle.copyWith(
                                  color: darkColor.withAlpha(90),
                                ),
                                hintText: 'Alamat lengkap Anda',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 24.w,
            child: Container(
              width: deviceWidth,
              alignment: Alignment.center,
              child: CustomButton(
                width: 210.w,
                margin: 0.w,
                title: 'Pesan Sekarang',
                onTap: () {
                  // Get.toNamed('/inputDataDiriPage');
                  showDialog(
                    context: context,
                    builder: ((context) {
                      return DialogBox(
                          widget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Perhatian!',
                                style: heading2TextStyle.copyWith(
                                    color: darkColor),
                              ),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                'Pastikan data diri yang Anda inputkan sudah benar!',
                                style: normalTextStyle.copyWith(
                                  color: darkColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomButton(
                                    width: 100.w,
                                    height: 40,
                                    margin: 10.w,
                                    title: 'Lanjut',
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ],
                          ),
                          height: 170.h);
                    }),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
