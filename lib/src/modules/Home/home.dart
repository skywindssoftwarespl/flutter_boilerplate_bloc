import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicana/core/common/widget/custom_image_view.dart';
import 'package:musicana/core/utility/route/app_router.gr.dart';

import '../../../core/common/image.dart';
import '../home/bloc/home_event.dart';
import '../home/bloc/home_state.dart';
import '../home/widget/post_card.dart';
import 'bloc/home_bloc.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (_) => HomeBloc()..add(FetchPosts()),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.router.push(ArtistProfileRoute());
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(Images.profile)),
                            shape: BoxShape.circle,
                            color: theme.colorScheme.onSecondary),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          "Welcome",
                          style: theme.textTheme.bodySmall,
                        ),
                        Text(
                          "Sanjay",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: theme.colorScheme.onSecondary),
                      child: Center(child: CustomImageView(height: 25, width: 25, svgPath: Images.notification)),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        context.router.push(SearchRoute());
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: theme.colorScheme.onSecondary),
                        child: Center(child: CustomImageView(height: 25, width: 25, svgPath: Images.search)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // bloc.add(SendOtpPressed());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(59)),
                          color: theme.primaryColor,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Text(
                          "Latest",
                          style: theme.textTheme.bodySmall?.copyWith(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        // bloc.add(SendOtpPressed());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(59)),
                          color: theme.cardColor,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Text(
                          "Following",
                          style: theme.textTheme.bodySmall?.copyWith(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        // bloc.add(SendOtpPressed());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(59)),
                          color: theme.cardColor,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Text(
                          "Play All",
                          style: theme.textTheme.bodySmall?.copyWith(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is HomeLoading) {
                      return Center(child: CircularProgressIndicator());
                    } else if (state is HomeLoaded) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.posts.length,
                        itemBuilder: (context, index) {
                          return PostCard(post: state.posts[index]);
                        },
                      );
                    }
                    return Center(child: Text("Welcome, Sanjay!"));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
