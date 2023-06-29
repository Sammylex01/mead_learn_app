
class UserDetailResponse {
  UserDetailResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.state,
    required this.profilePicture,
    required this.city,
    required this.emailVerification,
    required this.phoneVerification,
    required this.fullname,
  });
  late final String id;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String phoneNumber;
  late final String state;
  late final String profilePicture;
  late final String city;
  late final bool emailVerification;
  late final bool phoneVerification;
  late final String fullname;

  UserDetailResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    state = json['state'];
    profilePicture = json['profile_picture'];
    city = json['city'];
    emailVerification = json['email_verification'];
    phoneVerification = json['phone_verification'];
    fullname = json['fullname'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['phone_number'] = phoneNumber;
    _data['state'] = state;
    _data['profile_picture'] = profilePicture;
    _data['city'] = city;
    _data['email_verification'] = emailVerification;
    _data['phone_verification'] = phoneVerification;
    _data['fullname'] = fullname;
    return _data;
  }
}

class ServiceCategory {
  ServiceCategory({
    required this.id,
    required this.name,
    required this.image,
  });
  late final String id;
  late final String name;
  late final String image;

  ServiceCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['image'] = image;
    return _data;
  }
}
