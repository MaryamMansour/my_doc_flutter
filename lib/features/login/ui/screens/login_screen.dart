import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_doctor/core/helpers/spacing.dart';
import 'package:my_doctor/core/widgets/app_text_button.dart';
import 'package:my_doctor/core/widgets/app_text_form_field.dart';
import 'package:my_doctor/features/login/data/models/login_request_body.dart';
import 'package:my_doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:my_doctor/features/login/ui/widgets/dont_have_account.dart';
import 'package:my_doctor/features/login/ui/widgets/terms_and_conditions.dart';

import '../../../../core/theming/styles.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 30.0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(30),
                Text(
                  "Welcome Back",
                  style: TextStyles.font32BlueBold,
                ),
                verticalSpace(10),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(60),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forget Password?",
                          style: TextStyles.font13BlueRegular,
                        )),
                    verticalSpace(40),
                    AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateThenLogin(context);
                        }),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }

  }
}
