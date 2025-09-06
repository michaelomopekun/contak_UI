import 'dart:core';

class Contact
{
  String id;
  String name;
  String phone;
  String email;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
    required this.email
  });

  factory Contact.fromJson(Map<String, dynamic> json)
  {
    return Contact
    (
      id: json['id'],
      name: json['name'], 
      phone: json['phone'], 
      email: json['email']
    );
  }
}
