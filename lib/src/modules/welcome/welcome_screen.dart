// UI
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicana/core/utility/route/app_router.gr.dart';

import '../../../core/common/image.dart';
import 'bloc/welcome_bloc.dart';
import 'bloc/welcome_event.dart';
import 'bloc/welcome_state.dart';
import 'widget/welcome_content.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocProvider(
        create: (_) => WelcomeBloc(),
        child: Scaffold(
          backgroundColor: theme.hintColor,
          body: BlocConsumer<WelcomeBloc, WelcomeState>(
            listener: (context, state) {
              if (state is GoToAuth) {
                context.router.push(PhoneAuthenticationRoute());
              }
            },
            builder: (context, state) {
              if (state is ScreenOneState) {
                return WelcomeContent(
                  title: "Hey, Welcome to Musicana!",
                  description: "Explore sounds, mix with your favorite sounds and artists. Let's start this journey!",
                  imageUrl: Images.welcomeScreen1,
                );
              } else if (state is ScreenTwoState) {
                return WelcomeContent(
                  title: "Discover & Share",
                  description: "Find new music, share your favorites, and connect with like-minded listeners.",
                  imageUrl: Images.welcomeScreen2,
                );
              } else if (state is ScreenThreeState) {
                return WelcomeContent(
                  title: "Join the Musicana!",
                  description:
                      "Sign up, explore the beats, and start creating your playlist. Share and discover new tracks!",
                  imageUrl: Images.welcomeScreen3,
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}
