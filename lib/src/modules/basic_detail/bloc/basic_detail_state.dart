part of 'basic_detail_bloc.dart';

sealed class BasicDetailState extends Equatable {
  const BasicDetailState();
  
  @override
  List<Object> get props => [];
}

final class BasicDetailInitial extends BasicDetailState {}
final class Success extends BasicDetailState {}
