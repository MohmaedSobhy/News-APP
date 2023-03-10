import 'package:flutter/material.dart';
import 'package:news_app/constanstent.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticlePage extends StatelessWidget {
  final String hello;
  ArticlePage({super.key, required this.hello});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            textBaseline:TextBaseline.alphabetic,
            mainAxisSize: MainAxisSize.min, children: [
          Text(
            "Flutter",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
            ),
          ),
          Text(
            ConstantString.title,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15.sp,
            ),
          ),
        ]),
        centerTitle: true,
      ),
      body: Container(
        child: WebViewWidget(
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
              ..loadRequest(Uri.parse(hello))),
      ),
    );
  }
}
