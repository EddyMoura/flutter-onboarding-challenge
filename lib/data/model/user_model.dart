class User {
  String? avatarUrl;
  String? name;
  String? bio;
  Repositories? repositories;

  User({this.avatarUrl, this.name, this.bio, this.repositories});

  User.fromJson(Map<String, dynamic> json) {
    avatarUrl = json['avatarUrl'];
    name = json['name'];
    bio = json['bio'];
    repositories = json['repositories'] != null
        ? Repositories?.fromJson(json['repositories'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['avatarUrl'] = avatarUrl;
    data['name'] = name;
    data['bio'] = bio;
    data['repositories'] = repositories!.toJson();
    return data;
  }
}

class Repositories {
  List<Edge?>? edges;

  Repositories({this.edges});

  Repositories.fromJson(Map<String, dynamic> json) {
    if (json['edges'] != null) {
      edges = <Edge>[];
      json['edges'].forEach((v) {
        edges!.add(Edge.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['edges'] =edges != null ? edges!.map((v) => v?.toJson()).toList() : null;
    return data;
  }
}

class Edge {
  Node? node;

  Edge({this.node});

  Edge.fromJson(Map<String, dynamic> json) {
    node = json['node'] != null ? Node?.fromJson(json['node']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['node'] = node!.toJson();
    return data;
  }
}

class Node {
  String? id;
  String? name;

  Node({this.id, this.name});

  Node.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
