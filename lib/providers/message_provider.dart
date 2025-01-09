import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import '../models/massage_model.dart';

class MessageProvider with ChangeNotifier {
  List<Message> _messages = [];

  List<Message> get messages => _messages;

  Future<void> loadMessages() async {
    final String response = await rootBundle.loadString('assets/data/datamessage.json');
    final List<dynamic> data = jsonDecode(response);
    _messages = data.map((json) => Message.fromJson(json)).toList();
    
    // Memanggil notifyListeners untuk memberitahu UI jika ada perubahan data
    notifyListeners();
  }
}
