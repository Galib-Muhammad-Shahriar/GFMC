import 'package:GFMC_Intelligent/0.Provider/auth_provider.dart';
import 'package:GFMC_Intelligent/components/reuseable_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PayPal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayPal',
      home: Consumer<AuthProvider>(
        builder: (_, providerData, __)
    => Scaffold(
//      drawer: ReUseableDrawer(),
        appBar: AppBar(centerTitle: true,
          title: Text(
            "PayPal",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          backgroundColor: Colors.grey[800],
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "https://gfmc-intelligent.galibmuhammadshahriar.com/paypal/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),)
    );
  }
}