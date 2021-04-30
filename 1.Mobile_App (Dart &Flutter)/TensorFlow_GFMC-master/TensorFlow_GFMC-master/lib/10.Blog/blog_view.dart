import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLOG _ VIEW',
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text(
            "BLOG _ VIEW",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          backgroundColor: Colors.grey[800],
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "https://gfmc-intelligent.galibmuhammadshahriar.com/blogs/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}