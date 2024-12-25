import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'artist_profile_event.dart';
part 'artist_profile_state.dart';

class ArtistProfileBloc extends Bloc<ArtistProfileEvent, ArtistProfileState> {
  ArtistProfileBloc() : super(ArtistProfileInitial()) {
    on<ArtistProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
