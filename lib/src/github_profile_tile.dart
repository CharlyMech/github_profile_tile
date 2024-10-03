import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:github_profile_tile/src/models/github_user.dart';
import 'package:github_profile_tile/src/repository/github_api.dart';

class GithubProfileTile extends StatefulWidget {
  final String githubUsername;
  const GithubProfileTile({super.key, required this.githubUsername});

  @override
  State<GithubProfileTile> createState() => _GithubProfileTileState();
}

class _GithubProfileTileState extends State<GithubProfileTile> {
  late GithubApi _githubApiRepository;
  late GithubUser? _githubUser;
  late String test;

  @override
  Future<void> initState() async {
    Response<dynamic> githubUserRequest =
        await _githubApiRepository.getGithubUser(widget.githubUsername);
    test = githubUserRequest.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(test);
  }
}
