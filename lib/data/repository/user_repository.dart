import 'package:flutter_onboarding_challenge/data/model/user_model.dart';
import 'package:flutter_onboarding_challenge/data/queries.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class UserRepository {
  Future<User> fetchUser({String? login}) async {
    await initHiveForFlutter();

    final HttpLink httpLink = HttpLink('https://api.github.com/graphql');

    final AuthLink authLink = AuthLink(
      getToken: () => 'Bearer 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',
    );

    final Link link = authLink.concat(httpLink);

    GraphQLClient client = GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    );

    const int nRepositories = 50;

    QueryResult result = await client.query(
      QueryOptions(
        document: gql(GitHubQueries().fetchUser()),
        variables: {
          'login': login,
          'nRepositories': nRepositories,
        },
      ),
    );

    if (result.hasException) {
      throw Exception();
    } else {
      final user = User.fromJson(result.data?['user']);
      return user;
    }
  }
}
