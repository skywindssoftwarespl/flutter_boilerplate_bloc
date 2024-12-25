import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicana/core/common/widget/app_text_field.dart';
import '../../../core/common/image.dart';
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
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
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
                    const SizedBox(height: 10),
                    Text(
                      "Mobile Number",
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 20),
                    AppTextField(
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
                        const Text(
                          "Accept Terms & Conditions",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    if (state.errorMessage != null)
                      Text(
                        state.errorMessage!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(16),
                      ),
                      onPressed: state.isSendingOtp
                          ? null
                          : () {
                              bloc.add(SendOtpPressed());
                            },
                      child: state.isSendingOtp
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Icon(Icons.arrow_forward, color: Colors.white),
                    ),
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
