import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicana/core/utility/route/app_router.gr.dart';
import 'package:musicana/src/modules/phone_auth/widget/otp_screen.dart';

import '../../../core/common/extension/string_validator_extension.dart';
import '../../../core/common/widget/app_text_field.dart';
import '../../../core/common/image.dart';
import '../../../core/common/widget/custom_image_view.dart';
import 'bloc/phone_auth_state.dart';
import 'bloc/phone_auth_bloc.dart';
import 'bloc/phone_auth_event.dart';

@RoutePage()
class PhoneAuthenticationScreen extends StatelessWidget {
  const PhoneAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocProvider(
        create: (_) => PhoneAuthBloc(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocConsumer<PhoneAuthBloc, PhoneAuthState>(
              listener: (context, state) {
                if (state.otpSent == true) {
                  context.router.push(OtpRoute());
                }
              },
              builder: (context, state) {
                final bloc = context.read<PhoneAuthBloc>();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Image.asset(Images.LOGOPNG, height: 120, width: 120),
                    const SizedBox(height: 20),
                    Text(
                      "Welcome to Musicana App",
                      style: theme.textTheme.bodyMedium?.copyWith(height: 1),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Mobile Number",
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 5),
                    AppTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "fill_number".tr();
                        } else if (!val.isValidPhoneNumber()) {
                          return 'valid_number'.tr();
                        }
                        return null;
                      },
                      textInputType: TextInputType.phone,
                      textInputAction: TextInputAction.done,
                      controller: bloc.phoneController,
                      onTapOutside: (out) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      hintText: "99XXXXXXXX",
                      onChanged: (value) {
                        bloc.add(MobileNumberChanged(value));
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: state.isTermsAccepted,
                          onChanged: (value) {
                            bloc.add(TermsAndConditionsToggled(value ?? false));
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Accept ',
                            style: theme.textTheme.bodySmall,
                            children: [
                              TextSpan(
                                text: 'Terms and Conditions',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.primaryColor,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: Text(
                                          'Terms & Conditions',
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                        content: Text(
                                          'These are the terms and conditions...',
                                          style: theme.textTheme.bodySmall,
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.of(context).pop(),
                                            child: const Text('Close'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (state.errorMessage != null)
                      Text(
                        state.errorMessage!,
                        style: theme.textTheme.bodySmall?.copyWith(color: Colors.red),
                      ),
                    const Spacer(),
                    GestureDetector(
                      onTap: state.isSendingOtp
                          ? null
                          : () {
                              bloc.add(SendOtpPressed());
                            },
                      child: Container(
                        height: 73,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(59)),
                          color: Color(0xff04CA96),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Send otp",
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            state.isSendingOtp
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: const CircularProgressIndicator(color: Colors.white),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height: 68,
                                      width: 68,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffF0F0F0),
                                        borderRadius: BorderRadius.all(Radius.circular(55)),
                                      ),
                                      child: Center(
                                        child: CustomImageView(
                                          svgPath: Images.arrowRight, // Add your custom icon path
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
