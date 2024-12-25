import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicana/core/common/widget/custom_image_view.dart';
import '../../../../core/common/image.dart';
import '../bloc/welcome_bloc.dart';
import '../bloc/welcome_event.dart';

class WelcomeContent extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const WelcomeContent({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl), // Background image
          fit: BoxFit.cover, // Covers the entire background
        ),
      ),
      child: Stack(
        children: [
          // Shadow gradient effect
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0.05),
                      Colors.black.withOpacity(0.5), // Dark shadow at the bottom
                      Colors.black.withOpacity(0.6), // Dark shadow at the bottom
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    Text(
                      title,
                      style: theme.textTheme.headlineMedium?.copyWith(color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 8),
                    // Description
                    Text(
                      description,
                      style: theme.textTheme.labelMedium?.copyWith(color: Colors.white70, height: 1),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 20),
                    // "Get Started" button
                    GestureDetector(
                      onTap: () {
                        // Handle button tap event (e.g., trigger a BLoC event)
                        context.read<WelcomeBloc>().add(NextScreenEvent());
                      },
                      child: Container(
                        height: 73,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(59)),
                          color: Color(0xff04CA96),
                        ),
                        child: Row(
                          children: [
                            // Circular icon button
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                height: 68,
                                width: 68,
                                decoration: const BoxDecoration(
                                  color: Color(0xffF0F0F0),
                                  borderRadius: BorderRadius.all(Radius.circular(55)),
                                ),
                                child: Center(
                                  child: CustomImageView(
                                    svgPath: Images.arrowUp, // Add your custom icon path
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            // Button text
                            Text(
                              "Get Started",
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
