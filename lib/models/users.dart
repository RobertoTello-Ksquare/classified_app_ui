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
name = json['name'] ?? '';
email = json['email'] ?? '';
password = json["password"] ?? '';
mobile = json['mobile'] ?? '';
imgURL = json['imgURL'] ?? '';
'https://via.placeholder.com/300x400';
  } 
Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = this.id;
  data['imgURL'] = this.imgURL;
  data['mobile'] = this.mobile;
  data['name'] = this.name;
  data['email'] = this.email;
  data['password'] = this.password;
  return data;
    }
}