import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState(selectedTabIndex: 0)) {
    // Handle the TabChanged event
    on<TabChanged>((event, emit) {
      emit(NavigationState(selectedTabIndex: event.tabIndex));
    });
  }
}
