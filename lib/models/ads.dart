class AdModel {
  String? sid; 
  String? title; 
  String? description; 
  num? price; 
  List<String>? images;
  String? authorName; 
  String? mobile; 
  String? createdAt; 



  AdModel({
    this.sid,
    this.title,
    this.mobile,
    this.images,
    this.description,
    this.price,
    this.authorName,
    this.createdAt,
  });

AdModel.fromJson(Map<String, dynamic>json){
sid = json['_id'];
title = json['title'] ?? '';
description = json['description'] ?? '';
price = json["price"] ?? '';
images = List<String>.from(json['images'] ?? ['http://placehold.it/100x100']);
mobile = json['mobile'] ?? '';
authorName = json['authorName'] ?? '';
createdAt = json['createdAt'];
  } 
Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();

   data['_id'] = sid;
    data['title'] = title;
    data['description'] = description;
    data['price'] = price;
    data['images'] = images;
    data['authorName'] = authorName;
    data['mobile'] = mobile;
    data['createdAt'] = createdAt;
    return data;
  }
}

