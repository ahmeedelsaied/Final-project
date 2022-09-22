/// code : 200
/// message : "Done"
/// data : {"id":2,"name":"محل مستحضرات","description":"محل مستحضرات","category_id":2,"area_id":2,"phone":"+11115752554","image":"/uploads/places/166034516956645.jpg","whatsapp":"0123123123","distance":0,"rate":0,"latitude":"30.104943541556064","longitude":"31.343988508056626","images":[{"id":4,"place_id":2,"image":"/uploads/places/163882467821514.jpeg","created_at":"2021-12-06T20:04:38.000000Z","updated_at":"2021-12-06T20:04:38.000000Z"},{"id":5,"place_id":2,"image":"/uploads/places/163882467827798.jpeg","created_at":"2021-12-06T20:04:38.000000Z","updated_at":"2021-12-06T20:04:38.000000Z"},{"id":11,"place_id":2,"image":"/uploads/places/166034516944051.jpg","created_at":"2022-08-12T22:59:29.000000Z","updated_at":"2022-08-12T22:59:29.000000Z"}],"tags":[],"offers":[{"id":2,"place_id":2,"name":"فاتيكا كريم","description":"","image":"/uploads/offers/166034654299702.jpg"}],"reviews":[]}

class ConvertedPlaceInfo {
  ConvertedPlaceInfo({
      num? code, 
      String? message, 
      Data? data,}){
    _code = code;
    _message = message;
    _data = data;
}

  ConvertedPlaceInfo.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _code;
  String? _message;
  Data? _data;
ConvertedPlaceInfo copyWith({  num? code,
  String? message,
  Data? data,
}) => ConvertedPlaceInfo(  code: code ?? _code,
  message: message ?? _message,
  data: data ?? _data,
);
  num? get code => _code;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 2
/// name : "محل مستحضرات"
/// description : "محل مستحضرات"
/// category_id : 2
/// area_id : 2
/// phone : "+11115752554"
/// image : "/uploads/places/166034516956645.jpg"
/// whatsapp : "0123123123"
/// distance : 0
/// rate : 0
/// latitude : "30.104943541556064"
/// longitude : "31.343988508056626"
/// images : [{"id":4,"place_id":2,"image":"/uploads/places/163882467821514.jpeg","created_at":"2021-12-06T20:04:38.000000Z","updated_at":"2021-12-06T20:04:38.000000Z"},{"id":5,"place_id":2,"image":"/uploads/places/163882467827798.jpeg","created_at":"2021-12-06T20:04:38.000000Z","updated_at":"2021-12-06T20:04:38.000000Z"},{"id":11,"place_id":2,"image":"/uploads/places/166034516944051.jpg","created_at":"2022-08-12T22:59:29.000000Z","updated_at":"2022-08-12T22:59:29.000000Z"}]
/// tags : []
/// offers : [{"id":2,"place_id":2,"name":"فاتيكا كريم","description":"","image":"/uploads/offers/166034654299702.jpg"}]
/// reviews : []

class Data {
  Data({
      num? id, 
      String? name, 
      String? description, 
      num? categoryId, 
      num? areaId, 
      String? phone, 
      String? image, 
      String? whatsapp, 
      num? distance, 
      num? rate, 
      String? latitude, 
      String? longitude, 
      List<Images>? images, 
      List<dynamic>? tags, 
      List<Offers>? offers, 
      List<dynamic>? reviews,}){
    _id = id;
    _name = name;
    _description = description;
    _categoryId = categoryId;
    _areaId = areaId;
    _phone = phone;
    _image = image;
    _whatsapp = whatsapp;
    _distance = distance;
    _rate = rate;
    _latitude = latitude;
    _longitude = longitude;
    _images = images;
    _tags = tags;
    _offers = offers;
    _reviews = reviews;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _categoryId = json['category_id'];
    _areaId = json['area_id'];
    _phone = json['phone'];
    _image = json['image'];
    _whatsapp = json['whatsapp'];
    _distance = json['distance'];
    _rate = json['rate'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      _tags = [];
      json['tags'].forEach((v) {
        _tags?.add((v));
      });
    }
    if (json['offers'] != null) {
      _offers = [];
      json['offers'].forEach((v) {
        _offers?.add(Offers.fromJson(v));
      });
    }
    if (json['reviews'] != null) {
      _reviews = [];
      json['reviews'].forEach((v) {
        _reviews?.add((v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _description;
  num? _categoryId;
  num? _areaId;
  String? _phone;
  String? _image;
  String? _whatsapp;
  num? _distance;
  num? _rate;
  String? _latitude;
  String? _longitude;
  List<Images>? _images;
  List<dynamic>? _tags;
  List<Offers>? _offers;
  List<dynamic>? _reviews;
Data copyWith({  num? id,
  String? name,
  String? description,
  num? categoryId,
  num? areaId,
  String? phone,
  String? image,
  String? whatsapp,
  num? distance,
  num? rate,
  String? latitude,
  String? longitude,
  List<Images>? images,
  List<dynamic>? tags,
  List<Offers>? offers,
  List<dynamic>? reviews,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  description: description ?? _description,
  categoryId: categoryId ?? _categoryId,
  areaId: areaId ?? _areaId,
  phone: phone ?? _phone,
  image: image ?? _image,
  whatsapp: whatsapp ?? _whatsapp,
  distance: distance ?? _distance,
  rate: rate ?? _rate,
  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
  images: images ?? _images,
  tags: tags ?? _tags,
  offers: offers ?? _offers,
  reviews: reviews ?? _reviews,
);
  num? get id => _id;
  String? get name => _name;
  String? get description => _description;
  num? get categoryId => _categoryId;
  num? get areaId => _areaId;
  String? get phone => _phone;
  String? get image => _image;
  String? get whatsapp => _whatsapp;
  num? get distance => _distance;
  num? get rate => _rate;
  String? get latitude => _latitude;
  String? get longitude => _longitude;
  List<Images>? get images => _images;
  List<dynamic>? get tags => _tags;
  List<Offers>? get offers => _offers;
  List<dynamic>? get reviews => _reviews;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['description'] = _description;
    map['category_id'] = _categoryId;
    map['area_id'] = _areaId;
    map['phone'] = _phone;
    map['image'] = _image;
    map['whatsapp'] = _whatsapp;
    map['distance'] = _distance;
    map['rate'] = _rate;
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    if (_tags != null) {
      map['tags'] = _tags?.map((v) => v.toJson()).toList();
    }
    if (_offers != null) {
      map['offers'] = _offers?.map((v) => v.toJson()).toList();
    }
    if (_reviews != null) {
      map['reviews'] = _reviews?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// place_id : 2
/// name : "فاتيكا كريم"
/// description : ""
/// image : "/uploads/offers/166034654299702.jpg"

class Offers {
  Offers({
      num? id, 
      num? placeId, 
      String? name, 
      String? description, 
      String? image,}){
    _id = id;
    _placeId = placeId;
    _name = name;
    _description = description;
    _image = image;
}

  Offers.fromJson(dynamic json) {
    _id = json['id'];
    _placeId = json['place_id'];
    _name = json['name'];
    _description = json['description'];
    _image = json['image'];
  }
  num? _id;
  num? _placeId;
  String? _name;
  String? _description;
  String? _image;
Offers copyWith({  num? id,
  num? placeId,
  String? name,
  String? description,
  String? image,
}) => Offers(  id: id ?? _id,
  placeId: placeId ?? _placeId,
  name: name ?? _name,
  description: description ?? _description,
  image: image ?? _image,
);
  num? get id => _id;
  num? get placeId => _placeId;
  String? get name => _name;
  String? get description => _description;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['place_id'] = _placeId;
    map['name'] = _name;
    map['description'] = _description;
    map['image'] = _image;
    return map;
  }

}

/// id : 4
/// place_id : 2
/// image : "/uploads/places/163882467821514.jpeg"
/// created_at : "2021-12-06T20:04:38.000000Z"
/// updated_at : "2021-12-06T20:04:38.000000Z"

class Images {
  Images({
      num? id, 
      num? placeId, 
      String? image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _placeId = placeId;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Images.fromJson(dynamic json) {
    _id = json['id'];
    _placeId = json['place_id'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _placeId;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
Images copyWith({  num? id,
  num? placeId,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => Images(  id: id ?? _id,
  placeId: placeId ?? _placeId,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get placeId => _placeId;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['place_id'] = _placeId;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}