import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:musicana/core/common/widget/custom_image_view.dart';

import '../../../core/common/image.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
            title: const Text("Settings"),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: theme.primaryColor.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 0),
                  ),
                ], color: theme.cardColor, borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    ListTile(
                      leading: CustomImageView(svgPath: Images.user),
                      title: Text(
                        "Edit Profile",
                        style: theme.textTheme.bodySmall,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: theme.colorScheme.onSurface),
                    ),
                    ListTile(
                      leading: CustomImageView(svgPath: Images.videoPlaylist),
                      title: Text(
                        "Playlist",
                        style: theme.textTheme.bodySmall,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: theme.colorScheme.onSurface),
                    ),
                    ListTile(
                      leading: CustomImageView(svgPath: Images.support),
                      title: Text(
                        "Support",
                        style: theme.textTheme.bodySmall,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: theme.colorScheme.onSurface),
                    ),
                    ListTile(
                      leading: CustomImageView(svgPath: Images.savedVideo),
                      title: Text(
                        "Saved Videos",
                        style: theme.textTheme.bodySmall,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: theme.colorScheme.onSurface),
                    ),
                    ListTile(
                      leading: CustomImageView(svgPath: Images.logout),
                      title: Text(
                        "Logout ",
                        style: theme.textTheme.bodySmall,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: theme.colorScheme.onSurface),
                    )
                  ],
                )),
          ),
          Spacer(),
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
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
