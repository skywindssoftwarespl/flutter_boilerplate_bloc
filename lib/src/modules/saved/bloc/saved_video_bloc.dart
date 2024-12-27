import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'saved_video_event.dart';
part 'saved_video_state.dart';

class SavedVideoBloc extends Bloc<SavedVideoEvent, SavedVideoState> {
  SavedVideoBloc() : super(SavedVideoInitial()) {
    on<SavedVideoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
