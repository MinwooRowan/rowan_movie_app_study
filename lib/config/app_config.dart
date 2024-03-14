import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static final String movieAPiKey = dotenv.get('MOVIE_API_KEY');
  static const String baseUrl =
      'http://kobis.or.kr/kobisopenapi/webservice/rest/';
}
