import 'dart:convert';
import 'package:flutter_numbers/data/numbers.dart';
import 'package:flutter_numbers/models/exception.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  void checkNumber(String stringNumber) {
    if (stringNumber != "random") {
      final int number = int.parse(stringNumber);
      if (number < 0) throw FormatException();
    }
  }

  Future<Numbers> getNumberInfo(String stringNumber) async {
    final Uri link =
        Uri.parse("http://numbersapi.com/" + stringNumber + "/?json");
    final response = await http.get(link);
    final jsonResponse = jsonDecode(response.body);
    final numberInfo = Numbers.fromJson(jsonResponse);
    return numberInfo;
  }

  Future saveCache(Numbers numberInfo) async {
    final String? myDefination = numberInfo.text;
    final int? mynumber = numberInfo.number;
    if (mynumber == null || myDefination == null) {
      throw NullException();
    } else {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString('definition', myDefination);
      preferences.setInt('number', mynumber);
    }
  }

  Future<Numbers> getNumberInfoFromCache() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int? myNumber = preferences.getInt('number');
    String? myDef = preferences.getString('definition');
    if (myNumber == null || myDef == null) {
      throw CacheException();
    }
    return Numbers(number: myNumber, text: myDef);
  }
}
