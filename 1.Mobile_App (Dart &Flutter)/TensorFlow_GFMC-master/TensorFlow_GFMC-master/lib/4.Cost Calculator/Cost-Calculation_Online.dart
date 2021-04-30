import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CostCal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COST-Calculation',
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text(
            "COST-Calculation",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          backgroundColor: Colors.grey[800],
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "https://gfmc-intelligent.galibmuhammadshahriar.com/cost-calculation/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}