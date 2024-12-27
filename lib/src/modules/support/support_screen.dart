import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/common/image.dart';
import '../../../core/common/widget/app_text_field.dart';
import '../../../core/common/widget/custom_image_view.dart';

@RoutePage()
class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

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
            title: const Text("Support"),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                height: 60,
                width: 60,
                imagePath: Images.LOGOPNG,
              ),
              Text("Musicana", style: theme.textTheme.titleSmall?.copyWith(color: theme.primaryColor))
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Name",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15,
            ),
            child: AppTextField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "fill name".tr();
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              // controller: bloc.phoneController,
              borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),
              onTapOutside: (out) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              hintText: "john en",
              onChanged: (value) {
                // bloc.add(MobileNumberChanged(value));
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Subject",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: AppTextField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),

              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "fill subject".tr();
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              // controller: bloc.phoneController,
              onTapOutside: (out) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              hintText: "Contact",
              onChanged: (value) {
                // bloc.add(MobileNumberChanged(value));
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Message",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: AppTextField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              borderSide: BorderSide(color: theme.colorScheme.onSecondaryContainer),
              minline: 4,
              maxLines: 5,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "fill subject".tr();
                }
                return null;
              },
              textInputAction: TextInputAction.done,

              // controller: bloc.phoneController,
              onTapOutside: (out) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              hintText: "Enter your message",
              onChanged: (value) {
                // bloc.add(MobileNumberChanged(value));
              },
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: GestureDetector(
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
                        "Submit",
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(),
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
            ),
          )
        ],
      ),
    );
  }
}
