import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SavedVideoScreen extends StatelessWidget {
  const SavedVideoScreen({super.key});

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
            title: const Text("Saved Videos"),
          ),
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 18),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(index == 0 ? 10 : 0),
              topRight: Radius.circular(index == 2 ? 10 : 0),
            ),
            child: Image.network(
              'https://picsum.photos/250?image=$index',
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
