import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_challenge/blocs/user_search_bloc.dart';
import 'package:flutter_onboarding_challenge/blocs/user_search_event.dart';
import 'package:flutter_onboarding_challenge/blocs/user_search_state.dart';
import 'package:flutter_onboarding_challenge/data/model/user_model.dart';
import 'package:flutter_onboarding_challenge/data/repository/user_repository.dart';
import 'package:flutter_onboarding_challenge/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserSearchBloc extends MockBloc<UserSearchEvent, UserSearchState>
    implements UserSearchBloc {}

class MockUserRepository extends Mock implements UserRepository {}

main() {
  group('Home Screen', () {
    final searchTextField = find.byKey(const ValueKey('searchTextField'));
    final searchButton = find.byKey(const ValueKey('searchButton'));
    final progressIndicator = find.byKey(const ValueKey('progressIndicator'));
    const searchTerm = 'philipplackner';

    testWidgets('Search Empty State', (WidgetTester tester) async {
      await tester.pumpWidget(const GitHubSearchApp());
      expect(find.text('Please enter a login to begin'), findsOneWidget);
      expect(find.text(''), findsOneWidget);
    });

    testWidgets('Type a specific login', (WidgetTester tester) async {
      await tester.pumpWidget(const GitHubSearchApp());
      await tester.enterText(searchTextField, searchTerm);
      await tester.pumpAndSettle();
      expect(find.text(searchTerm), findsOneWidget);
      // construir casos de texto vazio
    });

    testWidgets('Tap button and wait screen load', (WidgetTester tester) async {
      await tester.pumpWidget(const GitHubSearchApp());
      await tester.enterText(searchTextField, searchTerm);
      await tester.pumpAndSettle();

      await tester.tap(searchButton);
      await tester.pumpAndSettle(); //rebuilds widget

      expect(progressIndicator, findsOneWidget);
    });

  });
}
