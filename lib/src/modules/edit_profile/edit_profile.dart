import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:musicana/core/common/extension/string_validator_extension.dart';

import '../../../core/common/image.dart';
import '../../../core/common/widget/app_text_field.dart';
import '../../../core/common/widget/custom_image_view.dart';

@RoutePage()
class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: AppBar(
            leading: CircleAvatar(
              backgroundColor: theme.cardColor,
              radius: 20,
              child: Center(
                  child: Icon(
                Icons.keyboard_backspace_sharp,
                color: theme.colorScheme.onSurface,
              )),
            ),
            title: const Text("Edit Profile"),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(shape: BoxShape.circle, color: theme.cardColor),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: CustomImageView(
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                      svgPath: Images.editPen,
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
                      borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "fill_email".tr();
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      // controller: bloc.firstNameController,
                      onTapOutside: (out) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      hintText: "first name",
                      onChanged: (value) {
                        // bloc.add(FirstNameChanged(value));
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: AppTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "last name".tr();
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      // controller: bloc.lastNameController,
                      onTapOutside: (out) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      hintText: "last name",
                      onChanged: (value) {
                        // bloc.add(LastNameChanged(value));
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
              borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),
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
            const SizedBox(height: 15),
            Text(
              "Bio",
              style: theme.textTheme.bodySmall,
            ),
            const SizedBox(height: 15),
            AppTextField(
              autovalidateMode: AutovalidateMode.onUserInteraction,

              minline: 3,
              maxLines: 4,
              borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "please enter bio".tr();
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              // controller: bloc.firstNameController,
              onTapOutside: (out) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              hintText: "Bio ",
              onChanged: (value) {
                // bloc.add(FirstNameChanged(value));
              },
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gender",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 10),
                        AppTextField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "Male".tr();
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          // controller: bloc.firstNameController,
                          onTapOutside: (out) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          hintText: "first name",
                          onChanged: (value) {
                            // bloc.add(FirstNameChanged(value));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DOB",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 10),
                        AppTextField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "DOB".tr();
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          // controller: bloc.lastNameController,
                          onTapOutside: (out) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          hintText: "DOB",
                          onChanged: (value) {
                            // bloc.add(LastNameChanged(value));
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                // bloc.add(Edit());
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Save",
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(),
                    // const SizedBox(width: 60),
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
        ),
      ),
    );
  }
}
