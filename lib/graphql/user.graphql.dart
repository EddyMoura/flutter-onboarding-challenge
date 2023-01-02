import 'package:gql/ast.dart';

class Variables$Query$FetchUser {
  factory Variables$Query$FetchUser({
    required String login,
    required int nRepositories,
  }) =>
      Variables$Query$FetchUser._({
        r'login': login,
        r'nRepositories': nRepositories,
      });

  Variables$Query$FetchUser._(this._$data);

  factory Variables$Query$FetchUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$login = data['login'];
    result$data['login'] = (l$login as String);
    final l$nRepositories = data['nRepositories'];
    result$data['nRepositories'] = (l$nRepositories as int);
    return Variables$Query$FetchUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get login => (_$data['login'] as String);
  int get nRepositories => (_$data['nRepositories'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$login = login;
    result$data['login'] = l$login;
    final l$nRepositories = nRepositories;
    result$data['nRepositories'] = l$nRepositories;
    return result$data;
  }

  CopyWith$Variables$Query$FetchUser<Variables$Query$FetchUser> get copyWith =>
      CopyWith$Variables$Query$FetchUser(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$nRepositories = nRepositories;
    final lOther$nRepositories = other.nRepositories;
    if (l$nRepositories != lOther$nRepositories) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$nRepositories = nRepositories;
    return Object.hashAll([
      l$login,
      l$nRepositories,
    ]);
  }
}

abstract class CopyWith$Variables$Query$FetchUser<TRes> {
  factory CopyWith$Variables$Query$FetchUser(
    Variables$Query$FetchUser instance,
    TRes Function(Variables$Query$FetchUser) then,
  ) = _CopyWithImpl$Variables$Query$FetchUser;

  factory CopyWith$Variables$Query$FetchUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchUser;

  TRes call({
    String? login,
    int? nRepositories,
  });
}

class _CopyWithImpl$Variables$Query$FetchUser<TRes>
    implements CopyWith$Variables$Query$FetchUser<TRes> {
  _CopyWithImpl$Variables$Query$FetchUser(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchUser _instance;

  final TRes Function(Variables$Query$FetchUser) _then;

  static const _undefined = {};

  TRes call({
    Object? login = _undefined,
    Object? nRepositories = _undefined,
  }) =>
      _then(Variables$Query$FetchUser._({
        ..._instance._$data,
        if (login != _undefined && login != null) 'login': (login as String),
        if (nRepositories != _undefined && nRepositories != null)
          'nRepositories': (nRepositories as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchUser<TRes>
    implements CopyWith$Variables$Query$FetchUser<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchUser(this._res);

  TRes _res;

  call({
    String? login,
    int? nRepositories,
  }) =>
      _res;
}

class Query$FetchUser {
  Query$FetchUser({
    this.user,
    required this.$__typename,
  });

  factory Query$FetchUser.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser(
      user: l$user == null
          ? null
          : Query$FetchUser$user.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchUser$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser on Query$FetchUser {
  CopyWith$Query$FetchUser<Query$FetchUser> get copyWith =>
      CopyWith$Query$FetchUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchUser<TRes> {
  factory CopyWith$Query$FetchUser(
    Query$FetchUser instance,
    TRes Function(Query$FetchUser) then,
  ) = _CopyWithImpl$Query$FetchUser;

  factory CopyWith$Query$FetchUser.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser;

  TRes call({
    Query$FetchUser$user? user,
    String? $__typename,
  });
  CopyWith$Query$FetchUser$user<TRes> get user;
}

class _CopyWithImpl$Query$FetchUser<TRes>
    implements CopyWith$Query$FetchUser<TRes> {
  _CopyWithImpl$Query$FetchUser(
    this._instance,
    this._then,
  );

  final Query$FetchUser _instance;

  final TRes Function(Query$FetchUser) _then;

  static const _undefined = {};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser(
        user: user == _undefined
            ? _instance.user
            : (user as Query$FetchUser$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchUser$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$FetchUser$user.stub(_then(_instance))
        : CopyWith$Query$FetchUser$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$FetchUser<TRes>
    implements CopyWith$Query$FetchUser<TRes> {
  _CopyWithStubImpl$Query$FetchUser(this._res);

  TRes _res;

  call({
    Query$FetchUser$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchUser$user<TRes> get user =>
      CopyWith$Query$FetchUser$user.stub(_res);
}

const documentNodeQueryFetchUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'login')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nRepositories')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'login'),
            value: VariableNode(name: NameNode(value: 'login')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'avatarUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'repositories'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'nRepositories')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$FetchUser$user {
  Query$FetchUser$user({
    required this.avatarUrl,
    this.name,
    this.bio,
    required this.repositories,
    required this.$__typename,
  });

  factory Query$FetchUser$user.fromJson(Map<String, dynamic> json) {
    final l$avatarUrl = json['avatarUrl'];
    final l$name = json['name'];
    final l$bio = json['bio'];
    final l$repositories = json['repositories'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser$user(
      avatarUrl: (l$avatarUrl as String),
      name: (l$name as String?),
      bio: (l$bio as String?),
      repositories: Query$FetchUser$user$repositories.fromJson(
          (l$repositories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String avatarUrl;

  final String? name;

  final String? bio;

  final Query$FetchUser$user$repositories repositories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$repositories = repositories;
    _resultData['repositories'] = l$repositories.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatarUrl = avatarUrl;
    final l$name = name;
    final l$bio = bio;
    final l$repositories = repositories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$avatarUrl,
      l$name,
      l$bio,
      l$repositories,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser$user) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$repositories = repositories;
    final lOther$repositories = other.repositories;
    if (l$repositories != lOther$repositories) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser$user on Query$FetchUser$user {
  CopyWith$Query$FetchUser$user<Query$FetchUser$user> get copyWith =>
      CopyWith$Query$FetchUser$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchUser$user<TRes> {
  factory CopyWith$Query$FetchUser$user(
    Query$FetchUser$user instance,
    TRes Function(Query$FetchUser$user) then,
  ) = _CopyWithImpl$Query$FetchUser$user;

  factory CopyWith$Query$FetchUser$user.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser$user;

  TRes call({
    String? avatarUrl,
    String? name,
    String? bio,
    Query$FetchUser$user$repositories? repositories,
    String? $__typename,
  });
  CopyWith$Query$FetchUser$user$repositories<TRes> get repositories;
}

class _CopyWithImpl$Query$FetchUser$user<TRes>
    implements CopyWith$Query$FetchUser$user<TRes> {
  _CopyWithImpl$Query$FetchUser$user(
    this._instance,
    this._then,
  );

  final Query$FetchUser$user _instance;

  final TRes Function(Query$FetchUser$user) _then;

  static const _undefined = {};

  TRes call({
    Object? avatarUrl = _undefined,
    Object? name = _undefined,
    Object? bio = _undefined,
    Object? repositories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser$user(
        avatarUrl: avatarUrl == _undefined || avatarUrl == null
            ? _instance.avatarUrl
            : (avatarUrl as String),
        name: name == _undefined ? _instance.name : (name as String?),
        bio: bio == _undefined ? _instance.bio : (bio as String?),
        repositories: repositories == _undefined || repositories == null
            ? _instance.repositories
            : (repositories as Query$FetchUser$user$repositories),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchUser$user$repositories<TRes> get repositories {
    final local$repositories = _instance.repositories;
    return CopyWith$Query$FetchUser$user$repositories(
        local$repositories, (e) => call(repositories: e));
  }
}

class _CopyWithStubImpl$Query$FetchUser$user<TRes>
    implements CopyWith$Query$FetchUser$user<TRes> {
  _CopyWithStubImpl$Query$FetchUser$user(this._res);

  TRes _res;

  call({
    String? avatarUrl,
    String? name,
    String? bio,
    Query$FetchUser$user$repositories? repositories,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchUser$user$repositories<TRes> get repositories =>
      CopyWith$Query$FetchUser$user$repositories.stub(_res);
}

class Query$FetchUser$user$repositories {
  Query$FetchUser$user$repositories({
    this.edges,
    required this.$__typename,
  });

  factory Query$FetchUser$user$repositories.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser$user$repositories(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchUser$user$repositories$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchUser$user$repositories$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser$user$repositories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser$user$repositories
    on Query$FetchUser$user$repositories {
  CopyWith$Query$FetchUser$user$repositories<Query$FetchUser$user$repositories>
      get copyWith => CopyWith$Query$FetchUser$user$repositories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUser$user$repositories<TRes> {
  factory CopyWith$Query$FetchUser$user$repositories(
    Query$FetchUser$user$repositories instance,
    TRes Function(Query$FetchUser$user$repositories) then,
  ) = _CopyWithImpl$Query$FetchUser$user$repositories;

  factory CopyWith$Query$FetchUser$user$repositories.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser$user$repositories;

  TRes call({
    List<Query$FetchUser$user$repositories$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchUser$user$repositories$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchUser$user$repositories$edges<
                      Query$FetchUser$user$repositories$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchUser$user$repositories<TRes>
    implements CopyWith$Query$FetchUser$user$repositories<TRes> {
  _CopyWithImpl$Query$FetchUser$user$repositories(
    this._instance,
    this._then,
  );

  final Query$FetchUser$user$repositories _instance;

  final TRes Function(Query$FetchUser$user$repositories) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser$user$repositories(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchUser$user$repositories$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$FetchUser$user$repositories$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchUser$user$repositories$edges<
                          Query$FetchUser$user$repositories$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchUser$user$repositories$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchUser$user$repositories<TRes>
    implements CopyWith$Query$FetchUser$user$repositories<TRes> {
  _CopyWithStubImpl$Query$FetchUser$user$repositories(this._res);

  TRes _res;

  call({
    List<Query$FetchUser$user$repositories$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$FetchUser$user$repositories$edges {
  Query$FetchUser$user$repositories$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$FetchUser$user$repositories$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser$user$repositories$edges(
      node: l$node == null
          ? null
          : Query$FetchUser$user$repositories$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchUser$user$repositories$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser$user$repositories$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser$user$repositories$edges
    on Query$FetchUser$user$repositories$edges {
  CopyWith$Query$FetchUser$user$repositories$edges<
          Query$FetchUser$user$repositories$edges>
      get copyWith => CopyWith$Query$FetchUser$user$repositories$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUser$user$repositories$edges<TRes> {
  factory CopyWith$Query$FetchUser$user$repositories$edges(
    Query$FetchUser$user$repositories$edges instance,
    TRes Function(Query$FetchUser$user$repositories$edges) then,
  ) = _CopyWithImpl$Query$FetchUser$user$repositories$edges;

  factory CopyWith$Query$FetchUser$user$repositories$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser$user$repositories$edges;

  TRes call({
    Query$FetchUser$user$repositories$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchUser$user$repositories$edges<TRes>
    implements CopyWith$Query$FetchUser$user$repositories$edges<TRes> {
  _CopyWithImpl$Query$FetchUser$user$repositories$edges(
    this._instance,
    this._then,
  );

  final Query$FetchUser$user$repositories$edges _instance;

  final TRes Function(Query$FetchUser$user$repositories$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser$user$repositories$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchUser$user$repositories$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchUser$user$repositories$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$FetchUser$user$repositories$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchUser$user$repositories$edges<TRes>
    implements CopyWith$Query$FetchUser$user$repositories$edges<TRes> {
  _CopyWithStubImpl$Query$FetchUser$user$repositories$edges(this._res);

  TRes _res;

  call({
    Query$FetchUser$user$repositories$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> get node =>
      CopyWith$Query$FetchUser$user$repositories$edges$node.stub(_res);
}

class Query$FetchUser$user$repositories$edges$node {
  Query$FetchUser$user$repositories$edges$node({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$FetchUser$user$repositories$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser$user$repositories$edges$node(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser$user$repositories$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser$user$repositories$edges$node
    on Query$FetchUser$user$repositories$edges$node {
  CopyWith$Query$FetchUser$user$repositories$edges$node<
          Query$FetchUser$user$repositories$edges$node>
      get copyWith => CopyWith$Query$FetchUser$user$repositories$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> {
  factory CopyWith$Query$FetchUser$user$repositories$edges$node(
    Query$FetchUser$user$repositories$edges$node instance,
    TRes Function(Query$FetchUser$user$repositories$edges$node) then,
  ) = _CopyWithImpl$Query$FetchUser$user$repositories$edges$node;

  factory CopyWith$Query$FetchUser$user$repositories$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser$user$repositories$edges$node;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUser$user$repositories$edges$node<TRes>
    implements CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> {
  _CopyWithImpl$Query$FetchUser$user$repositories$edges$node(
    this._instance,
    this._then,
  );

  final Query$FetchUser$user$repositories$edges$node _instance;

  final TRes Function(Query$FetchUser$user$repositories$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser$user$repositories$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUser$user$repositories$edges$node<TRes>
    implements CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> {
  _CopyWithStubImpl$Query$FetchUser$user$repositories$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
