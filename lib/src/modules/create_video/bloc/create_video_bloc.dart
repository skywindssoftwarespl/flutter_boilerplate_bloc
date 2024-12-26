import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_video_event.dart';
part 'create_video_state.dart';

class CreateVideoBloc extends Bloc<CreateVideoEvent, CreateVideoState> {
  CreateVideoBloc() : super(CreateVideoInitial()) {
    on<CreateVideoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
