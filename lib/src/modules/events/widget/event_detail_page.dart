import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/image.dart';
import '../../../../core/common/widget/custom_image_view.dart';

@RoutePage()
class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
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
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
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
                          Visibility(
                            visible: false,
                            child: Padding(
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
                            ),
                          ),
                          Visibility(
                              visible: true,
                              child: Text(
                                  "Presenting the full video of Tere Sang Yaara from Rustom sung by Atif Aslam ft. Akshay Kumar & Ileana D'cruz.   Title : Tere Sang Yaara  Singer : Atif Aslam  Lyrics : Manoj Muntashir  Music : Arko  Guitarist : Krishna Pradhan  Produced & Mixed by Aditya Dev  Mastered by Shadab Rayeen   #teresangyaara #atifaslam #rustom #akshaykumar #arko #ileanadcruz #zeemusicompany   To set this song as your caller tune dial :    Airtel users : 5432115597447  Vodafone users : 5378110705  Idea users : 567898110705   Docomo users : sms SET 8110705 to 543211   BSNL (SOUTH) - BT 8110705 to 56700   BSNL (EAST) - BT 8110705 to 56700  BSNL (NORTH) - BT 6129515 to 56700  BSNL (WEST) - BT 6129515 to 56700   Aircel Users : sms DT 6129515 to 53000   Cast : Akshay Kumar, Ileana D'cruz, Arjan Bajwa, Esha Gupta  Banner : Zee Studios, Kriarj Entertaiment, Cape of Good Films & Friday Filmworks  Directed by : Tinu Suresh Desai  Produced by : Neeraj Pandey, Aruna Bhatia, Nittin Keni, Akash Chawla, Virender Arora, Ishwar Kapoor & Shital Bhatia",
                                  style: theme.textTheme.titleSmall)),
                          Visibility(
                            visible: false,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("All song(50)", style: theme.textTheme.titleSmall),
                                  ListView.builder(
                                    itemCount: 10,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: theme.colorScheme.background),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.white),
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                            Images.event,
                                                          )),
                                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Tere sang yaara",
                                                      style: theme.textTheme.titleSmall,
                                                    ),
                                                    Text(
                                                      "Atif Aslam",
                                                      style: theme.textTheme.titleSmall,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                                decoration: BoxDecoration(
                                                    color: theme.primaryColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: Images.videoPlaylist,
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      "Add Playlist",
                                                      style: theme.textTheme.titleSmall,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
