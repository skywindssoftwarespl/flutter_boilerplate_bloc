import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/extension/string_validator_extension.dart';
import '../../../core/common/widget/app_text_field.dart';
import '../../../core/utility/route/app_router.gr.dart';
import 'bloc/basic_detail_bloc.dart';
import '../../../../core/common/image.dart';
import '../../../../core/common/widget/custom_image_view.dart';
import 'bloc/basic_detail_event.dart';

@RoutePage()
class BasicDetailScreen extends StatelessWidget {
  const BasicDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocProvider(
        create: (_) => BasicDetailBloc(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocConsumer<BasicDetailBloc, BasicDetailState>(
              listener: (context, state) {
                if (state is Success) {
                  context.router.push(BasicHome());
                }
              },
              builder: (context, state) {
                final bloc = context.read<BasicDetailBloc>();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(Images.LOGOPNG, height: 120, width: 120),
                    const SizedBox(height: 20),
                    Text(
                      "Basic Details",
                      style: theme.textTheme.bodyMedium?.copyWith(height: 1),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Upload Photo",
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: theme.cardColor),
                      child: Stack(
                        children: [
                          Center(
                            child: CustomImageView(
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                              imagePath: Images.camera,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Your Name",
                      style: theme.textTheme.bodySmall,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                            child: AppTextField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "fill_email".tr();
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              controller: bloc.firstNameController,
                              onTapOutside: (out) {
                                FocusScope.of(context).requestFocus(FocusNode());
                              },
                              hintText: "first name",
                              onChanged: (value) {
                                bloc.add(FirstNameChanged(value));
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: AppTextField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "last name".tr();
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              controller: bloc.lastNameController,
                              onTapOutside: (out) {
                                FocusScope.of(context).requestFocus(FocusNode());
                              },
                              hintText: "last name",
                              onChanged: (value) {
                                bloc.add(LastNameChanged(value));
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Email id",
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 5),
                    AppTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "fill_email".tr();
                        } else if (!val.isValidEmail()) {
                          return 'valid_email'.tr();
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.done,
                      // controller: bloc.phoneController,
                      onTapOutside: (out) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      hintText: "john@gmail.com",
                      onChanged: (value) {
                        // bloc.add(MobileNumberChanged(value));
                      },
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        bloc.add(Create());
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
                            /* state.isLoading
                                ? const Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: CircularProgressIndicator(color: Colors.white))
                                :  */
                            Padding(
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
