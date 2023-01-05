class GitHubQueries {
 String fetchUser() {
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
}

