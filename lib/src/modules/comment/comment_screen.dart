import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:musicana/src/modules/comment/widget/comment_widget.dart';

import '../../../core/common/image.dart';
import '../../../core/common/widget/custom_image_view.dart';

@RoutePage()
class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

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
            title: const Text("Comments"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          // change to network image for dynamic image
                          image: DecorationImage(
                            image: AssetImage(Images.postHome),
                            fit: BoxFit.fill,
                          ),
                          // color: Colors.green,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    child: CustomImageView(
                                      fit: BoxFit.cover,
                                      radius: BorderRadius.all(Radius.circular(22)),
                                      imagePath: Images.profile,
                                    ),
                                    radius: 22,
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ashim",
                                        style: theme.textTheme.bodySmall,
                                      ),
                                      Text(
                                        "20m ago",
                                        style: theme.textTheme.titleSmall?.copyWith(color: theme.disabledColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius:
                              BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: Images.heart,
                                ),
                                Text(
                                  "105",
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(width: 10),
                                CustomImageView(
                                  svgPath: Images.comment,
                                ),
                                Text("45", style: theme.textTheme.bodySmall),
                                SizedBox(width: 10),
                                CustomImageView(
                                  svgPath: Images.share,
                                ),
                                Text("85", style: theme.textTheme.bodySmall),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: theme.primaryColor, borderRadius: BorderRadius.all(Radius.circular(10))),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        svgPath: Images.videoPlaylist,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "Add Playlist",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Throwback to when I started my musical journey. Never give up on your dreams! #Inspiration #MusicJourney",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Column(
                              children: List.generate(6, (int index) {
                            return CommentWidget();
                          }))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
