import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class FoodChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Chart',
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text(
            "Food Chart",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          backgroundColor: Colors.grey[800],
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "https://gfmc-intelligent.galibmuhammadshahriar.com/food-chart/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}