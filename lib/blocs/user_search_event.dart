abstract class UserSearchEvent {
  const UserSearchEvent();
}

class PressButtonSearchEvent extends UserSearchEvent {
  final String text;

  const PressButtonSearchEvent({required this.text});
}
