import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:doctor_shunk/choices%20diagnosis/mental%20status/quesion.dart';

List getAllResult(List<Question> q1, List<Question> q2, List<Question> q3,
    List<Question> q4) {
  dynamic q = q1 + q2 + q3 + q4;
  List<String> valus_mental = [];
  q.forEach((item) {
    valus_mental.add(item.answer);
  });

  return valus_mental;
}


Future<String> sendAnswersToFastAPI(dynamic answers) async {
  final url = Uri.parse('http://192.168.43.231:8000/mental_predict');

  final headers = {
    'Content-Type': 'application/json',
  };

  final body = jsonEncode(answers);

  final response = await http.post(url, headers: headers, body: body);
  // return response.body;
  if (response.statusCode == 200) {
    // Request successful
    // Process the response from FastAPI as needed
    print('Response from FastAPI: ${response.body}');
    return '${response.body}';
    // responseBody=response.body;
  } else {
    // Request failed
    print('Error sending data. Status code: ${response.statusCode}');
    return 'error';
  }
}
