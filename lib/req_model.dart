class ReqModel {
  String name;
  String bio;
  String reqPic;
  String createdAt;
  String phoneNumber;
  String uid;

  ReqModel({
    required this.name,
    required this.bio,
    required this.reqPic,
    required this.createdAt,
    required this.phoneNumber,
    required this.uid,
  });

  // from map
  factory ReqModel.fromMap(Map<String, dynamic> map) {
    print("as1df");
    return ReqModel(


      name: map['name'] ?? '',
      bio: map['bio'] ?? '',
      uid: map['uid'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      createdAt: map['createdAt'] ?? '',
      reqPic: map['reqPic'] ?? '',
    );
  }

  // to map
  Map<String, dynamic> toMap() {
    print("a2sdf");
    return {

      "name": name,
      "uid": uid,
      "bio": bio,
      "reqPic": reqPic,
      "phoneNumber": phoneNumber,
      "createdAt": createdAt,
    };
  }
}
