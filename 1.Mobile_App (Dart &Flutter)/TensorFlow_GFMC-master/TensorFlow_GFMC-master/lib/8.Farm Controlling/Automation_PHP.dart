import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Automation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automation',
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text(
            "Automation",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          backgroundColor: Colors.grey[800],
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "http://gbel-ems.com/auto/select.php",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}