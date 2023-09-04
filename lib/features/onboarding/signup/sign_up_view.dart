import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:termii_store/components/app_button.dart';
import 'package:termii_store/components/app_text.dart';
import 'package:termii_store/components/app_text_field.dart';
import 'package:termii_store/components/or_divider.dart';
import 'package:termii_store/components/shipor_avatar.dart';
import 'package:termii_store/components/social_icon_button.dart';
import 'package:termii_store/components/spacing.dart';
import 'package:termii_store/constants/assets.dart';
import 'package:termii_store/constants/colors.dart';
import 'package:termii_store/features/home/home_view.dart';
import 'package:termii_store/features/onboarding/login/login_screen.dart';
import 'package:termii_store/features/onboarding/signup/sign_up_view_model.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: model.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacing.height(60),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: AppText(
                          'Create an account',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const Spacing.tinyHeight(),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: AppText(
                          'Let’s create your account',
                          fontSize: 16,
                          color: Colors.black,
                          // fontFamily: FontFamily.hovesRegular,
                        ),
                      ),
                      const Spacing.height(45),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppText(
                              'Full Name',
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            const Spacing.smallHeight(),
                            AppTextField(
                              textEditingController: model.emailController,
                              hintText: 'Enter your full name',
                            ),
                            const Spacing.height(20),
                            const AppText(
                              'Email Address',
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            const Spacing.smallHeight(),
                            AppTextField(
                              textEditingController: model.emailController,
                              hintText: 'Enter your Email',
                            ),
                            const Spacing.height(20),
                            const AppText(
                              'Password',
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            const Spacing.smallHeight(),
                            AppTextField(
                              textEditingController: model.passwordController,
                              obscureText: !model.passwordVisible,
                              hintText: 'Enter your password',
                              maxLines: 1,
                              obscureChar: '●',
                              suffixIcon: IconButton(
                                onPressed: () =>
                                    model.changePasswordVisibility(),
                                icon: model.passwordVisible
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility_off),
                              ),
                            ),
                            const Spacing.height(52),
                            AppButton(
                              // loading: loading.value,
                              onPressed: () {
                                // snackBars.success(message: 'message');
                                // if (model.formKey.currentState!.validate()) {
                                //   return;
                                // }
                                //loading.value = true;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeView()));
                                // authBloc.add(
                                //   LoginEvent(
                                //     email: emailTEC.text.trim(),
                                //     password: passwordTEC.text.trim(),
                                //   ),
                                // );
                              },
                              title: 'Create Account',
                            ),
                            const Spacing.height(20),
                            const OrDivider(),
                            const Spacing.height(20),
                            const SocialLoginButton(
                              icon: AppAssets.googleIcon,
                              text: 'Continue with Google',
                            ),
                            const Spacing.height(20),
                            AppButton(
                                onPressed: () {},
                                color: AppColors.appBlue,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppAssets.facebookIcon,
                                      height: 25,
                                      width: 25,
                                    ),
                                    const Spacing.width(10),
                                    const AppText(
                                      'Continue with Facebook',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ],
                                )),
                            const Spacing.height(20),
                            //Spacer(),
                            const Align(
                                alignment: Alignment.center,
                                child: ShiporAvatar()),
                            const Spacing.bigHeight(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const AppText(
                                  'Don\'t have an account?',
                                  fontSize: 16,
                                  color: Colors.black,
                                  // fontFamily: FontFamily.hovesRegular,
                                ),
                                TextButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginView())),
                                    child: const AppText(
                                      'Login',
                                      color: Colors.black,
                                      fontSize: 16,
                                      textDecoration: TextDecoration.underline,
                                    )),
                              ],
                            ),
                            const Spacing.height(38),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
