import 'dart:convert';

import 'package:contak/Model/contactModel.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Contactservice 
{
  final String baseUrl = dotenv.env['BACKEND_BASE_URL'] ?? "";

  Future<List<Contact>> fetchContacts() async
  {
    try
    {
      final response = await http.get(Uri.parse(baseUrl));

      if(response.statusCode != 200)
      {
        throw Exception("Failed to load contacts");
      }

      final List<dynamic> data = json.decode(response.body);

      return data.map((c) => Contact.fromJson(c)).toList();
    }
    catch(error)
    {
      throw Exception('Failed to fetch contacts: $error');
    }
  }
}