class User {
  String uid;
  String name;
  String email;
  String username;
  String status;
  int state;
  String profilePhoto;

  User(
      {this.uid,
      this.name,
      this.email,
      this.username,
      this.status,
      this.state,
      this.profilePhoto});

  Map toMap(User user) {
    var data = Map<String, dynamic>();
    data['uid'] = user.uid;
    data['name'] = user.name;
    data['email'] = user.email;
    data['username'] = user.username;
    data["status"] = user.status;
    data["state"] = user.state;
    data["profile_photo"] = user.profilePhoto;
    return data;
  }

  User.fromMap(Map<String, dynamic> mapData) {
    this.uid = mapData['uid'] as String;
    this.name = mapData['name'] as String;
    this.email = mapData['email'] as String;
    this.username = mapData['username'] as String;
    this.status = mapData['status'] as String;
    this.state = mapData['state'] as int;
    this.profilePhoto = mapData['profile_photo'] as String;
  }
}
