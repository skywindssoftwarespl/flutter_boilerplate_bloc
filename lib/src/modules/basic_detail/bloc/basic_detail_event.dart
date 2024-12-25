import 'package:equatable/equatable.dart';

abstract class BasicDetailEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FirstNameChanged extends BasicDetailEvent {
  String? firstName;
  FirstNameChanged(this.firstName);
}

class LastNameChanged extends BasicDetailEvent {
  String? lastName;
  LastNameChanged(this.lastName);
}

class EmailChanged extends BasicDetailEvent {
  String? email;
  EmailChanged(this.email);
}

class Create extends BasicDetailEvent {
 
}
