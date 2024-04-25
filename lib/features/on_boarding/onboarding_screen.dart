import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_doctor/features/on_boarding/widgets/doc_logo.dart';
import 'package:my_doctor/features/on_boarding/widgets/doctoe_image_text.dart';
import 'package:my_doctor/features/on_boarding/widgets/get_started_button.dart';

import '../../core/theming/styles.dart';

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
            child:  Column(
            children: [

              const DocLogoAndName(),
               SizedBox(height: 30.h,),
              const DoctorImageAndText(),
              Padding(
                padding:  EdgeInsets.only(top: 30.h, bottom: 30.h),
                child: Column(
                  children: [
                    Text("Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                    style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center),
                    SizedBox(height: 30.h,),
                    const GetStartedButton(),
                  ],
                ),
              )
            ],
        ),
          )
        ),
      ),
    );
  }
}
