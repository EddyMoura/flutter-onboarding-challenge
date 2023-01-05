import 'package:flutter_onboarding_challenge/data/model/user_model.dart';

abstract class UserSearchState {
  const UserSearchState();
}

class SearchEmptyState extends UserSearchState {}

class SearchLoadingState extends UserSearchState {}

class SearchLoadedState extends UserSearchState {
  final User user;

  const SearchLoadedState({required this.user});
}

class SearchErrorState extends UserSearchState {
  final String message;

  const SearchErrorState({required this.message});
}
