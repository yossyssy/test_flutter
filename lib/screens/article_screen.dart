  import 'package:flutter/material.dart';
  import 'package:qiita_search202307/models/article.dart';
 import 'package:webview_flutter/webview_flutter.dart'; // webview_flutterをimport

  class ArticleScreen extends StatefulWidget {
    const ArticleScreen({
      super.key,
      required this.article,
    });

    final Article article;

    @override
    State<ArticleScreen> createState() => _ArticleScreenState();
  }

  class _ArticleScreenState extends State<ArticleScreen> {
   late WebViewController controller = WebViewController();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Article Page'),
        ),
       body: null,
       body: WebViewWidget(controller: controller),
      );
    }
  }