import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'basic_detail_event.dart';

part 'basic_detail_state.dart';

class BasicDetailBloc extends Bloc<BasicDetailEvent, BasicDetailState> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  BasicDetailBloc() : super(BasicDetailInitial()) {
    on<BasicDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<Create>((event, emit) {
      // TODO: implement event handler
      emit(Success());
    });
  }
}
