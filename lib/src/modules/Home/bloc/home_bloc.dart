import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/bloc/home_event.dart';
import '../../home/bloc/home_state.dart';
import '../../home/model/post_model.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<FetchPosts>((event, emit) async {
      emit(HomeLoading());
      await Future.delayed(Duration(seconds: 2)); // Simulate API call
      List<Post> posts = [
        Post(username: "Ashim", timeAgo: "20m ago", content: "Throwback...", likes: 105, comments: 45, shares: 85),
        Post(username: "Meet", timeAgo: "1h ago", content: "Another post...", likes: 80, comments: 30, shares: 50),
      ];
      emit(HomeLoaded(posts));
    });
  }
}
