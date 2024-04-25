import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_doctor/features/on_boarding/widgets/doc_logo.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
          Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h
            ),
            child: const Column(
            children: [

              DocLogoAndName(),
            ],
        ),
          )
        ),
      ),
    );
  }
}
