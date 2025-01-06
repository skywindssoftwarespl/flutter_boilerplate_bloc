import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:musicana/core/common/widget/app_text_field.dart';
import 'package:musicana/core/common/widget/custom_image_view.dart';

import '../../../core/common/image.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                backgroundColor: theme.cardColor,
                radius: 20,
                child: Center(
                    child: Icon(
                  Icons.keyboard_backspace_sharp,
                  color: theme.colorScheme.onSurface,
                )),
              ),
            ),
            title: const Text("Search"),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: AppTextField(
              borderSide: BorderSide(color: theme.colorScheme.outline),
              hintText: "Search...",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomImageView(
                  color: theme.colorScheme.outline,
                  svgPath: Images.search,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            child: Row(
                children: List.generate(3, (int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: theme.primaryColor, borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Center(
                      child: Text(
                        "All",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
              );
            })),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: theme.cardColor,
                        border: Border.all(color: theme.colorScheme.onSecondary)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CustomImageView(
                            radius: BorderRadius.all(Radius.circular(10)),
                            imagePath: Images.postHome,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Throwback to when I started my musical journey. Never give up on your dreams! #Inspiration #MusicJourney",
                                  style: theme.textTheme.bodySmall,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "20m ago",
                                  style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSecondary),
                                )
                              ],
                            ),
                          ),
                        ),

                        // unfollow users
                        Visibility(
                          visible: false,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                                decoration: BoxDecoration(
                                    color: theme.primaryColor, borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  "Follow",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              SizedBox(width: 15),
                              CustomImageView(svgPath: Images.rightArrow),
                              SizedBox(width: 15),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: true,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                CustomImageView(svgPath: Images.play),
                                SizedBox(width: 10),
                                CustomImageView(svgPath: Images.menuDot)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
