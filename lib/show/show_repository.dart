import 'package:dojo/show/index.dart';

class ShowRepository {
  final ShowProvider _restShowProvider = RestShowProvider();

  ShowRepository();

  Future<ShowModel> getAsync(String token) async {
    return _restShowProvider.loadAsync(token);
  }
}