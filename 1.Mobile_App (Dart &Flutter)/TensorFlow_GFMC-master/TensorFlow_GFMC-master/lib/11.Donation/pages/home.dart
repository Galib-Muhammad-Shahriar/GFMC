import 'package:flutter/material.dart';
import 'package:GFMC_Intelligent/11.Donation/services/payment-service.dart';
import 'package:progress_dialog/progress_dialog.dart';

class HomePageStripe extends StatefulWidget {
  HomePageStripe({Key key}) : super(key: key);

  @override
  HomePageStripeState createState() => HomePageStripeState();
}

class HomePageStripeState extends State<HomePageStripe> {

  onItemPress(BuildContext context, int index) async {
    switch(index) {
      case 0:
        payViaNewCard(context);
        break;
      case 1:
        Navigator.pushNamed(context, '/11.2.2.Stripe_existing-cards');
        break;
    }
  }

  payViaNewCard(BuildContext context) async {
    ProgressDialog dialog = new ProgressDialog(context);
    dialog.style(
      message: 'Please wait...'
    );
    await dialog.show();
    var response = await StripeService.payWithNewCard(
      amount: '15000',
      currency: 'USD'
    );
    await dialog.hide();
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(response.message),
        duration: new Duration(milliseconds: response.success == true ? 1200 : 3000),
      )
    );
  }

  @override
  void initState() {
    super.initState();
    StripeService.init();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0,),
      body: Container(
        color: Colors.grey[700],
        padding: EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: (context, index) {
            Icon icon;
            Text text;

            switch(index) {
              case 0:
                icon = Icon(Icons.add_circle, color: Colors.amberAccent);
                text = Text('Pay via new card',
                  style: TextStyle(color: Colors.amberAccent, fontSize: 18),);
                break;
              case 1:
                icon = Icon(Icons.credit_card, color: Colors.amberAccent);
                text = Text('Pay via existing card',
                  style: TextStyle(color: Colors.amberAccent, fontSize: 18),);
                break;
            }

            return InkWell(
              onTap: () {
                onItemPress(context, index);
              },
              child: ListTile(
                title: text,
                leading: icon,
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(
            color: theme.primaryColor,
          ),
          itemCount: 2
        ),
      ),
    );;
  }
}