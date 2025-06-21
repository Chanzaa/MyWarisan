import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ClaudeApiService {
  static const _apiKey = " use_your_api_key"; // will be delete when we upload on github
  static const _url = "https://api.anthropic.com/v1/messages";

  Future<String> analyzeHeritageImage(File image) async {
    final bytes = await image.readAsBytes();
    final base64Image = base64Encode(bytes);

    final response = await http.post(
      Uri.parse(_url),
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': _apiKey,
        'anthropic-version': '2023-06-01',
      },
      body: jsonEncode({
        'model': 'claude-3-haiku-20240307', // or use claude-3-sonnet-20240229
        'max_tokens': 500,
        'messages': [
          {
            'role': 'user',
            'content': [
              {
                'type': 'text',
                'text':
                'Based on this image, please describe the Malaysian heritage site or artifact shown. Include cultural, historical and regional significance briefly.'
              },
              {
                'type': 'image',
                'source': {
                  'type': 'base64',
                  'media_type': 'image/jpeg',
                  'data': base64Image,
                }
              }
            ]
          },
        ],
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['content'][0]['text'];
    } else {
      print("Claude API response: ${response.body}");
      throw Exception("Failed to analyze image: ${response.statusCode}");
    }
  }
}
