import 'package:diet_maker/core/data/api/api_client.dart';

extension FakeApiClient on ApiClient {
  Future<List<int>> getPlan() => Future.delayed(
        Duration(milliseconds: 500),
        () => List<int>.generate(7, (i) => 1634688000000 + i * 86400000),
      );
}
