import 'package:fordev/main/factories/factories.dart';
import '../data/http/http.dart';
import '../../../domain/helpers/helpers.dart';

class StartLists {
  Future<dynamic> buildingList() async {
    String url = makeApiUrl('start');
    HttpClient httpClient = makeAuthorizeHttpClientDecorator();
    try {
      final httpResponse = await httpClient.request(url: url, method: 'get');

      return httpResponse['data'];
    } on HttpError catch (error) {
      throw error == HttpError.forbidden
          ? DomainError.emailInUse
          : DomainError.unexpected;
    }
  }
}
