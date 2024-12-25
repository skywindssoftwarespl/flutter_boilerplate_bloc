import 'package:flutter_bloc/flutter_bloc.dart';

import 'welcome_event.dart';
import 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(ScreenOneState()) {
    on<NextScreenEvent>((event, emit) {
      emit(_getNextState(state));
    });
  }

  WelcomeState _getNextState(WelcomeState currentState) {
    if (currentState is ScreenOneState) {
      return ScreenTwoState();
    } else if (currentState is ScreenTwoState) {
      return ScreenThreeState();
    } else if (currentState is ScreenThreeState) {
      return GoToAuth(); // Loop back to the first screen
    }
    return ScreenOneState(); // Default to the first state in case of unexpected issues
  }
}
