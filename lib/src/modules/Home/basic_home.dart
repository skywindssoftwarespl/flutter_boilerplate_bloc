import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicana/src/modules/chat/chat_screen.dart';
import 'package:musicana/src/modules/comment/comment_screen.dart';
import 'package:musicana/src/modules/create_video/create_video_screen.dart';
import 'package:musicana/src/modules/events/event_screen.dart';
import 'package:musicana/src/modules/home/home.dart';
import '../navigation/bloc/navigation_bloc.dart';
import 'widget/custom_bottom_navigation_bar.dart';

@RoutePage()
class BasicHome extends StatelessWidget {
  final List<Widget> _screens = [
    Home(),
    ChatScreen(),
    CreateVideoScreen(),
    CommentScreen(),
    EventScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Scaffold(
            body: _screens[state.selectedTabIndex],
            bottomNavigationBar: CustomBottomNavigationBar(),
          );
        },
      ),
    );
  }
}
