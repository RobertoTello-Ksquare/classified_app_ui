class UserModel {
  String? id; 
  String? name; 
  String? email; 
  String? mobile; 
  String? password; 
  String? imgURL; 

  UserModel({
    this.id,
    this.imgURL,
    this.mobile,
    this.name,
    this.email,
    this.password,
  });

UserModel.fromJson(Map<String, dynamic>json){
id = json['_id'];
name = json['name'];
email = json['email'];
password = json["password"];
mobile = json['mobile'];
imgURL = json['imgURL'];
} 
Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = id;
  data['imgURL'] = imgURL;
  data['mobile'] = mobile;
  data['name'] = name;
  data['email'] = email;
  data['password'] = password;
  return data;
    }
}