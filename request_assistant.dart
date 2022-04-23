import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:users_app/global/map_key.dart';

class RequestAssistant {

  static Future<dynamic> receiveRequest (String url) async {
    http.Response httpResponse = await http.get(Uri.parse(url));

    try {
      if (httpResponse.statusCode == 200) { //Successful
        String responseData = httpResponse.body;

        var decodeResponseData = jsonDecode(responseData);
        return decodeResponseData;
      } else {
        return "Error Occurred, Failed";
      }
    } catch (exp) {
      return "Error Occurred, Failed";
    }

  }
}