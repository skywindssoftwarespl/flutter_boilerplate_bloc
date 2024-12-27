import 'package:flutter/material.dart';

class CustomDialogPlaylist extends StatelessWidget {
  const CustomDialogPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: theme.cardColor,
            border: Border.all(color: theme.colorScheme.onSecondary)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: theme.cardColor,
                        border: Border.all(color: theme.colorScheme.onSecondary)),
                    child: Row(
                      children: [
                        Text(
                          "90's classic",
                          style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSecondary),
                        ),
                        Spacer(),
                        Text("20 songs",
                            style: theme.textTheme.titleSmall?.copyWith(color: theme.colorScheme.onSecondary)),
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
                );
              },
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          "Create playlist",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: theme.colorScheme.onSecondaryContainer),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          "Move",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: theme.primaryColor),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
