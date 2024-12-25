import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/common/image.dart';
import '../../../core/common/widget/custom_image_view.dart';

@RoutePage()
class ArtistProfileScreen extends StatelessWidget {
  const ArtistProfileScreen({super.key});

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
            title: const Text("Artist Profile "),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              child: Row(
                children: [
                  const CircleAvatar(
                    child: CustomImageView(
                      fit: BoxFit.cover,
                      radius: BorderRadius.all(Radius.circular(35)),
                      imagePath: Images.profile,
                    ),
                    radius: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ashim Goldar", style: theme.textTheme.bodySmall),
                      Text("@ashimgoldar007", style: theme.textTheme.titleSmall?.copyWith(color: theme.disabledColor)),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 2, top: 2, right: 12, left: 12),
                        decoration: BoxDecoration(
                            color: theme.cardColor, borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text("UnFollow", style: theme.textTheme.bodySmall),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: theme.primaryColor),
                    child: const Center(
                      child: CustomImageView(
                        svgPath: Images.chat1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              child: Text(
                  "🎶 Music is life | 🎧 Sharing my sound with the world | 🎥 Video creator | 🌍 Everywhere, always creating",
                  style: theme.textTheme.bodySmall),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(4, (int index) {
                  return Container(
                    child: Column(
                      children: [
                        Text(
                          index.toString(),
                          style: theme.textTheme.displayMedium,
                        ),
                        Text("Likes", style: theme.textTheme.titleSmall)
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(color: theme.cardColor, borderRadius: BorderRadius.all(Radius.circular(10))),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              child: Row(
                children: [
                  Text(
                    "List",
                    style: theme.textTheme.bodySmall,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text("Play All", style: theme.textTheme.bodySmall),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  )
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
            )
          ],
        ),
      ),
    );
  }
}
