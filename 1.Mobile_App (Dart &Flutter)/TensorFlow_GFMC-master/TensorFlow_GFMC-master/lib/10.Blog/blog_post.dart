import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLOG _ POST',
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text(
            "BLOG _ POST",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          backgroundColor: Colors.grey[800],
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "https://gfmc-intelligent.galibmuhammadshahriar.com/add-blog/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}