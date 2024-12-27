import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

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
            title: const Text("Playlists"),
            actions: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(shape: BoxShape.circle, color: theme.primaryColor),
                child: Center(
                  child: Icon(Icons.add, color: theme.colorScheme.onSurface),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: theme.cardColor),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Text(
                      "90’s Classic",
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(),
                    Text("20 songs", style: theme.textTheme.titleSmall?.copyWith(color: theme.colorScheme.onSecondary)),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
