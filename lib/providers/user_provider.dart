import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/user_model.dart';
import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  Future<void> loadUser() async {
    final String response = await rootBundle.loadString('assets/data/datauser.json');
    final Map<String, dynamic> data = jsonDecode(response);
    _user = User.fromJson(data);
    notifyListeners();
  }
}
