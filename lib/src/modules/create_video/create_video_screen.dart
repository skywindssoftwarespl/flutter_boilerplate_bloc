import 'package:auto_route/annotations.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:musicana/core/common/widget/app_text_field.dart';
import 'package:musicana/core/common/widget/custom_image_view.dart';

import '../../../core/common/image.dart';

@RoutePage()
class CreateVideoScreen extends StatelessWidget {
  const CreateVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: () {
            // bloc.add(Create());
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
                  "Post",
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
        ),
      ),
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
            title: const Text("Video Post"),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upload Video",
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 18),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                color: Colors.white,
                strokeWidth: 1,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 45.0),
                    child: Column(
                      children: [
                        CustomImageView(svgPath: Images.cloud),
                        SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "select video",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 21),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21),
              AppTextField(
                maxLines: 8,
                minline: 6,
                borderSide: BorderSide(color: theme.colorScheme.outline, width: 1.0),
                onTapOutside: (value) {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                hintText: "Typing Something....",
              ),
              // Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
