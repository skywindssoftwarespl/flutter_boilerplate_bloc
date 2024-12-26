import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicana/core/common/widget/custom_image_view.dart';
import '../../../../core/common/image.dart';
import '../../navigation/bloc/navigation_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.selectedTabIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: theme.primaryColor,
          unselectedIconTheme: IconThemeData(
            color: theme.hintColor, // Unselected icon color
            size: 24, // Adjust the size of the unselected icon
          ),
          onTap: (index) {
            context.read<NavigationBloc>().add(TabChanged(index));
          },
          items: [
            BottomNavigationBarItem(
                icon: CustomImageView(
                  svgPath: Images.bottomHome,
                  color: state.selectedTabIndex == 0 ? theme.primaryColor : theme.hintColor,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: CustomImageView(
                    svgPath: Images.bottomChat,
                    color: state.selectedTabIndex == 1 ? theme.primaryColor : theme.hintColor),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: CustomImageView(
                    svgPath: Images.bottomCreate,
                    color: state.selectedTabIndex == 2 ? theme.primaryColor : theme.hintColor),
                label: "Create"),
            BottomNavigationBarItem(
                icon: CustomImageView(
                    svgPath: Images.bottomVideo,
                    color: state.selectedTabIndex == 3 ? theme.primaryColor : theme.hintColor),
                label: "Videos"),
            BottomNavigationBarItem(
                icon: CustomImageView(
                    svgPath: Images.bottomEvent,
                    color: state.selectedTabIndex == 4 ? theme.primaryColor : theme.hintColor),
                label: "Events"),
          ],
        );
      },
    );
  }
}
