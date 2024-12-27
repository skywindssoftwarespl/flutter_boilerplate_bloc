part of 'saved_video_bloc.dart';

sealed class SavedVideoState extends Equatable {
  const SavedVideoState();
  
  @override
  List<Object> get props => [];
}

final class SavedVideoInitial extends SavedVideoState {}
