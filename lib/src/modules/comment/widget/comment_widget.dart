import 'package:flutter/material.dart';

import '../../../../core/common/image.dart';
import '../../../../core/common/widget/custom_image_view.dart';

class CommentWidget extends StatelessWidget {
  String? comment;
  CommentWidget({super.key, this.comment});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(height: 1, color: theme.colorScheme.outline),
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
        ),
        Text(
          "Wow, such a powerful message. Never stop chasing your dreams! 💯✨",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(
          height: 10
        )
      ],
    );
  }
}
