import 'package:flutter/material.dart';
import '../../core/web_view_wrapper.dart';

class YoutubeScreens extends StatelessWidget {
  const YoutubeScreens({super.key, required this.url, required this.title});
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return WebViewWrapper(url:url, title:title);
  }
}
