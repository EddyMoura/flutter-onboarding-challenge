const String searchUser = '''
    query getUserData(\$login: String!) {
      user(login: \$login) {
        avatarUrl
        name
        bio
      }
    }
''';

const String readRepositories = """
  query ReadRepositories(\$nRepositories: Int!) {
    viewer {
      repositories(last: \$nRepositories) {
        nodes {
          id
          name
          viewerHasStarred
        }
      }
    }
  }
""";