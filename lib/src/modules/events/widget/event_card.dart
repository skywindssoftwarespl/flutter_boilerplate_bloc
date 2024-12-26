import 'package:flutter/material.dart';
import 'package:musicana/core/common/widget/custom_image_view.dart';
import 'package:musicana/src/modules/events/model/event_model.dart';

import '../../../../core/common/image.dart';

class EventCard extends StatelessWidget {
  final EventModel eventModel;

  const EventCard({Key? key, required this.eventModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
      child: Card(
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
                  image: AssetImage(Images.event),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Shirish Dokadiya Live | Ahmedabad 2025",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: Images.calender,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "December 25 | 8PM",
                            style: theme.textTheme.titleSmall?.copyWith(color: theme.hintColor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: Images.location,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "V.K Club, S.G Highway, Ahmedabad",
                            style: theme.textTheme.titleSmall?.copyWith(color: theme.hintColor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.teal.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: Colors.black,
                            border: Border.all(color: theme.colorScheme.onSurfaceVariant),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Text("Play all video songs", style: theme.textTheme.titleSmall),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
