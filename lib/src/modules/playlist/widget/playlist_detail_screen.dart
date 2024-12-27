import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:musicana/core/common/widget/custom_dialog.dart';
import 'package:musicana/core/common/widget/custom_image_view.dart';
import 'package:musicana/src/modules/playlist/widget/custom_dialog_playlist.dart';
import 'package:musicana/src/modules/playlist/widget/custom_playlist_create_dialog.dart';

import '../../../../core/common/image.dart';

@RoutePage()
class PlaylistDetailScreen extends StatelessWidget {
  const PlaylistDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        backgroundColor: theme.cardColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Container(
            // padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 18.0),
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
              title: const Text("90's Classic"),
              actions: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomDialogCreatePlaylist();
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: CustomImageView(
                      svgPath: Images.menuDot,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)), color: theme.colorScheme.background),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  Images.event,
                                )),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tere sang yaara",
                            style: theme.textTheme.titleSmall,
                          ),
                          Text(
                            "Atif Aslam",
                            style: theme.textTheme.titleSmall,
                          )
                        ],
                      ),
                    ),
                    CustomPopup(
                      contentDecoration: BoxDecoration(
                        color: theme.cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.teal.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      content: SizedBox(
                        width: 220,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialogPlaylist();
                                    });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: Images.videoPlaylist,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Move to another playlist", style: theme.textTheme.titleSmall)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              color: theme.colorScheme.onSecondary,
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialog();
                                    });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      height: 20,
                                      svgPath: Images.delete,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Delete from this playlist", style: theme.textTheme.titleSmall)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      child: CustomImageView(svgPath: Images.menuDot),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
