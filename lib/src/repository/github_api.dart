import 'package:dio/dio.dart';
import 'package:github_profile_tile/src/utils/dio_client.dart';

class GithubApi {
  late final DioClient _client;

  GithubApi() {
    _client = DioClient();
  }

  Future<Response<dynamic>> getGithubUser(String username) async {
    return _client.dio.get(username);
  }
}
