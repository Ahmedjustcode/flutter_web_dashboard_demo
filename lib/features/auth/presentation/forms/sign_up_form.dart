import 'package:flutter/material.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';
import 'package:flutter_web_example/core/widgets/app_button.dart';
import 'package:flutter_web_example/core/widgets/app_text_field.dart';
import 'package:flutter_web_example/core/widgets/responsive_widget.dart';
import 'package:flutter_web_example/features/main/presentation/view/main_screen.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Responsive(
        desktop: Padding(
          padding: EdgeInsets.symmetric(vertical: 100),
          child: _BuildDesktopSignUpForm(),
        ),
        mobile: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: _BuildDesktopSignUpForm(),
        ),
        tablet: Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: _BuildDesktopSignUpForm(),
        ),
      ),
    );
  }
}

class _BuildDesktopSignUpForm extends StatelessWidget {
  const _BuildDesktopSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      decoration: BoxDecoration(
          color: AppColors.c2E2E48,
          border: Border.all(color: AppColors.cE4E8EF),
          borderRadius: BorderRadius.circular(15)),
      constraints: const BoxConstraints(maxWidth: 800),
      margin: Responsive.isDesktop(context) ? null : const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: Responsive.isDesktop(context)
                    ? const EdgeInsets.symmetric(horizontal: 150)
                    : Responsive.isMobile(context)
                        ? const EdgeInsets.symmetric(horizontal: 15)
                        : const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxHeight: 50),
                          child: SizedBox(
                            child: FittedBox(
                              alignment: Alignment.topLeft,
                              child: Text(
                                AppStrings.createNewAccount,
                                textAlign: TextAlign.start,
                                style: AppTextStyles.latoW700(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.alreadyAMember,
                              style: AppTextStyles.latoW400().copyWith(color: AppColors.cE1E1E1.withOpacity(0.4)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              AppStrings.login,
                              style: AppTextStyles.latoW700().copyWith(color: AppColors.c475BE8, fontSize: 16),
                            ),
                          ],
                        ),
                        AppTextField(
                          controller: TextEditingController(),
                          hintText: AppStrings.hUsername,
                          topMargin: 25,
                        ),
                        AppTextField(controller: TextEditingController(), hintText: AppStrings.hName),
                        AppTextField(controller: TextEditingController(), hintText: AppStrings.hEmail),
                        AppTextField(
                          controller: TextEditingController(),
                          hintText: AppStrings.hPassword,
                        ),
                        AppTextField(
                          controller: TextEditingController(),
                          hintText: AppStrings.hConfirmPassword,
                        ),
                        AppButton(
                          text: AppStrings.register,
                          onTap: () {
                            Navigator.pushNamed(context,MainScreen.route);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
