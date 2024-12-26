part of 'create_video_bloc.dart';

sealed class CreateVideoState extends Equatable {
  const CreateVideoState();
  
  @override
  List<Object> get props => [];
}

final class CreateVideoInitial extends CreateVideoState {}
