import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../../core/network/repository/user_repository.dart';
import '../../../../core/utility/injectable.dart';
import '../../../../core/utility/route/app_router.gr.dart';
import '../../../../core/common/image.dart';
import '../../../../core/common/widget/custom_image_view.dart';
import '../bloc/phone_auth_bloc.dart';
import '../bloc/phone_auth_event.dart';
import '../bloc/phone_auth_state.dart';

@RoutePage()
class OtpScreen extends StatelessWidget {
  String? phoneNumber;
  OtpScreen({super.key, this.phoneNumber});
  UserRepository userRepository = getIt<UserRepository>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocProvider(
        create: (_) => PhoneAuthBloc(userRepository: userRepository),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocConsumer<PhoneAuthBloc, PhoneAuthState>(
              listener: (context, state) {
                if (state.verified == true && state.register == true) {
                  context.router.replaceAll([BasicDetailRoute()]);
                } else if (state.verified == true && state.register == false) {
                  context.router.replaceAll([Home()]);
                }
              },
              builder: (context, state) {
                final bloc = context.read<PhoneAuthBloc>();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(Images.LOGOPNG, height: 120, width: 120),
                    const SizedBox(height: 20),
                    Text(
                      "OTP",
                      style: theme.textTheme.bodyMedium?.copyWith(height: 1),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Enter OTP",
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 15),
                    OTPTextField(
                      // controller: controller.otpbox,
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 47,
                      fieldStyle: FieldStyle.box,
                      otpFieldStyle: OtpFieldStyle(
                          focusBorderColor: theme.colorScheme.onSecondaryContainer,
                          enabledBorderColor: theme.colorScheme.onSecondaryContainer,
                          backgroundColor: theme.cardColor,
                          disabledBorderColor: theme.colorScheme.onSecondaryContainer,
                          borderColor: theme.colorScheme.onSecondaryContainer),
                      outlineBorderRadius: 12,
                      style: theme.textTheme.bodySmall ?? TextStyle(fontSize: 12),
                      textFieldAlignment: MainAxisAlignment.spaceBetween,
                      onChanged: (value) {
                        bloc.add(OtpChanged(value));
                      },
                      onCompleted: (pin) {
                        // controller.smsPin.value = pin;
                      },
                    ),
                    if (state.errorMessage != null)
                      Text(
                        state.errorMessage!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    const Spacer(),
                    GestureDetector(
                      onTap: state.isSendingOtp
                          ? null
                          : () {
                              bloc.add(VerifyOtp(phoneNumber: phoneNumber));
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
                              "Continue",
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(width: 60),
                            state.isSendingOtp
                                ? const Padding(
                                    padding: EdgeInsets.only(right: 12.0),
                                    child: CircularProgressIndicator(color: Colors.white))
                                : Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height: 68,
                                      width: 68,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffF0F0F0),
                                        borderRadius: BorderRadius.all(Radius.circular(55)),
                                      ),
                                      child: const Center(
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
