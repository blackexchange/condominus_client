import 'package:fordev/data/http/http.dart';
import 'package:fordev/infra/http/http.dart';
import 'package:fordev/helpers/helpers.dart';

import '../mocks/mocks.dart';

import 'package:faker/faker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

void main() {
  late HttpAdapter sut;
  late ClientSpy client;
  late String url;
  late String token;

  setUp(() {
    client = ClientSpy();
    sut = HttpAdapter(client);
  });

  setUpAll(() {
    url = 'https://webhook.site/1ae578e4-213e-4018-a9cd-5c0f76b2b9ff';
    registerFallbackValue(Uri.parse(url));
    token =
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOGJhN2NjZWE5YTVkMDRkMzJiMzBjMDU3ZDFkNGNjMDQ4MmYzNmQwNzE5NDZkY2JmZGUxYzNkYzg1Zjc5OTU5YzgwNmJhNjkzMmZkNTM5NGUiLCJpYXQiOjE2NDc1NTkwOTkuNjkyNDY1LCJuYmYiOjE2NDc1NTkwOTkuNjkyNDczLCJleHAiOjE2NzkwOTUwOTkuNDY1NDEzLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.dWZjDulERjpJGsh6eWjO18pzldjY-AErV8WoBamcO0waAz5sspmGnCfn4paUASfRQrX8nhrJ7DHRa48GoLIxCnrtkJ2KIC5DJHhFn4WbaD64gMN20I2x3hfWmVOwT3XFwveQwTl_zsu2rRajLpLytTW1qQGJqQ0VargGaDNFXv_J8RHKmyuZIioYQMX4-m3bKUNonmDWh0zcP_okFpUjqPnRdde-mJ2mPCtlOrDUf9qoj-pYM9sG7q60GUz0mVQl2jcQW5UaB5J0gZbP-_3VS4cJRsaDB7yx8eI5RCysjzjQuqTMw4cUUIFffrU8-6OIhLE0b--BL-b_orhdzpvQWjsRai2ilSnGZnb4kJ4P1_eGcKZSAhzyCTfeRbLwcNeienAv12zJf4h3MqDmpsekQcZf0kQ7kfKHQ4b2hfjoDst4cV41szcTInVKq1di8sdcnPtg2vF1-6iVhzn-4fvPHfTNfDnIXLzjJFZT66HNdn6J6MRfrxMlD1l8PNbLjy83hUcQ2w45F2zRCUL-igYX6QNUENIOzA6z903kHiJAJH9BlXn3Wy51F9rENj_j8SPMsN-C3zt3TI6pdmfr55ScUusv_U-QodsWYIfOCdzUG75JIFRQih9W0RlvkkjRXDpYY3yn-Q_gbzNIx-jQYonEQjn34ZmnnsaSdsdNNRgDL4Q';
  });

  group('shared', () {
    test('Should throw ServerError if invalid method is provided', () async {
      final future = sut.request(url: url, method: 'invalid_method');

      expect(future, throwsA(HttpError.serverError));
    });
  });

  group('get', () {
    test('Should call get with correct values', () async {
      await sut.request(url: url, method: 'get');
      verify(() => client.get(Uri.parse(url), headers: {
            'content-type': 'application/json',
            'accept': 'application/json'
          }));

      await sut.request(
          url: url, method: 'get', headers: {'any_header': 'any_value'});
      verify(() => client.get(Uri.parse(url), headers: {
            'content-type': 'application/json',
            'accept': 'application/json',
            'any_header': 'any_value'
          }));
    });
  });
}
