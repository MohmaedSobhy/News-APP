import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/presentation/views/custome_title_app_bar.dart';
import 'package:news_app/core/localization/app_string.dart';

import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailes extends StatelessWidget {
  final String newsUrl;
  const NewsDetailes({super.key, required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomeTitleAppBarView(
          title: AppString.appName,
        ),
      ),
      body: WebViewWidget(
          controller: WebViewController()
            ..setNavigationDelegate(
              NavigationDelegate(
                onProgress: (int progress) {
                  // Update loading bar.
                },
                onPageStarted: (String url) {},
                onPageFinished: (String url) {},
                onWebResourceError: (WebResourceError error) {},
                onNavigationRequest: (NavigationRequest request) {
                  return NavigationDecision.navigate;
                },
              ),
            )
            ..loadRequest(Uri.parse(newsUrl))),
    );
  }
}
