import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/common/image.dart';
import '../../../core/common/widget/app_text_field.dart';
import '../../../core/common/widget/custom_image_view.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
            title: const Text("Chat"),
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
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, image: DecorationImage(image: AssetImage(Images.profile))),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cody Fisher",
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
                            maxLines: 2,
                            style: theme.textTheme.titleSmall?.copyWith(color: theme.colorScheme.onSecondary),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "10 min",
                          style: theme.textTheme.titleSmall?.copyWith(color: theme.colorScheme.onSecondary),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "2  ",
                            style: theme.textTheme.titleSmall?.copyWith(fontSize: 10),
                          ),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: theme.primaryColor),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
