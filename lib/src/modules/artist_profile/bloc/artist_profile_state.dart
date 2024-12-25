part of 'artist_profile_bloc.dart';

sealed class ArtistProfileState extends Equatable {
  const ArtistProfileState();
  
  @override
  List<Object> get props => [];
}

final class ArtistProfileInitial extends ArtistProfileState {}
