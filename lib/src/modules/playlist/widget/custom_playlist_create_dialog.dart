import 'package:flutter/material.dart';

import '../../../../core/common/widget/app_text_field.dart';

class CustomDialogCreatePlaylist extends StatelessWidget {
  const CustomDialogCreatePlaylist({super.key});

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
            Row(
              children: [
                Text("Create new playlist", style: theme.textTheme.bodySmall),
              ],
            ),
            SizedBox(height: 20),
            AppTextField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "playlist name";
                }
                return null;
              },
              textInputAction: TextInputAction.done,
              // controller: bloc.phoneController,
              onTapOutside: (out) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              borderSide: BorderSide(color: theme.colorScheme.onSecondary),
              hintText: "Enter playlist name",
              onChanged: (value) {
                // bloc.add(playlistNameChanged(value));
              },
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          "Cancel",
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
                          "Create",
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
