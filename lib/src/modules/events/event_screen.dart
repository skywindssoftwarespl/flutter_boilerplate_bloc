import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:musicana/src/modules/events/model/event_model.dart';
import 'package:musicana/src/modules/events/widget/event_card.dart';

@RoutePage()
class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            title: const Text("Events"),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: theme.primaryColor, borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Center(
                      child: Text(
                        "Upcoming",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: theme.cardColor, borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Center(
                      child: Text(
                        "Past",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: theme.cardColor, borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Center(
                      child: Text(
                        "See all",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return EventCard(
                  eventModel: EventModel(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
