import 'package:bloc/bloc.dart';
import 'package:flutter_onboarding_challenge/blocs/user_search_event.dart';
import 'package:flutter_onboarding_challenge/blocs/user_search_state.dart';

import '../data/repository/user_repository.dart';


class UserSearchBloc extends Bloc<UserSearchEvent, UserSearchState> {
  final _userRepository = UserRepository();

  UserSearchBloc() : super(SearchEmptyState()) {
    on<PressButtonSearchEvent>(
      (event, emit) async {
        final login = event.text;

        if (login.isEmpty) return emit(SearchEmptyState());

        emit(SearchLoadingState());

        try {
          final user = await _userRepository.fetchUser(login: login);
          emit(SearchLoadedState(user: user));
        } catch (error) {
          emit(error is SearchErrorState
              ? SearchErrorState(message: error.message)
              : const SearchErrorState(message: 'something went wrong'));
        }
      },
    );
  }
}
