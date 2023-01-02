class GitHubQueries {
  String fetchUser() {
    return """
      query FetchUser(\$login: String!) {
        user(login: \$login) {
          avatarUrl
          name
          bio
        }
      }
  """;
  }

  String fetchUserWithRepository() {
    return """
    query FetchUser(\$login: String!, \$nRepositories: Int!) {
      user(login: \$login) {
        avatarUrl
        name
        bio
        repositories(last: \$nRepositories) {
          edges {
            node {
              id
              name
            }
          }
        }
      }
    }
  """;
  }

  String readRepositories() {
    return """
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
  }


}

