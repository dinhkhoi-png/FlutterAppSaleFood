import 'package:flutter_app_sale/data/api/api_client.dart';
import 'package:flutter_app_sale/models/signup_body_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({ required this.apiClient, required this.sharedPreferences});
  registration(SignUpBody signUpBody){
    // apiClient.postData(uri, body)
  }
}