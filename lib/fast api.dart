import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> sendQuestionsToFastAPI(dynamic questions) async {
  final url = Uri.parse('http://192.168.43.231:8000/predict');

  final headers = {
    'Content-Type': 'application/json',
  };

  final body = jsonEncode(questions);

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
