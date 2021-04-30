
import 'package:GFMC_Intelligent/0.Provider/auth_provider.dart';
import 'package:GFMC_Intelligent/Screens/Login/login_screen.dart';
import 'package:GFMC_Intelligent/Start_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ReUseableDrawer extends StatefulWidget {
  const ReUseableDrawer({
    Key key,
  }) : super(key: key);

  @override
  _ReUseableDrawerState createState() => _ReUseableDrawerState();
}

class _ReUseableDrawerState extends State<ReUseableDrawer> {
  FirebaseUser _loggedInUser;
  final _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        setState(() {
          _loggedInUser = user;
        });

      }
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (_, providerData, __) {
      return Drawer(

        child: Container(
          color: Colors.yellow[100],
          child: ListView(
            children: [
              DrawerHeader(
                // decoration: BoxDecoration(
                //   shape: BoxShape.circle,
                //   image: DecorationImage(
                //     image: NetworkImage(
                //         'https://firebasestorage.googleapis.com/v0/b/gfmc-intelligent.appspot.com/o/Toshiie.jpg?alt=media&token=96d510e6-4206-4231-b97d-4e6fb73e38b5',
                //     )
                //   ),
                //   border: Border.all(
                //     color: Colors.black, width: 5
                //   )
                // ),

                child:
                    Column(
              children: [Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/gfmc-intelligent.appspot.com/o/Toshiie.jpg?alt=media&token=96d510e6-4206-4231-b97d-4e6fb73e38b5',),
                    radius: 45,


                  )
                ],
              ),
                SizedBox(height: 10,),
                _loggedInUser.email != null ?
                Text(_loggedInUser.email): Text(''),
            ],
          )

              ),

              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/0.0.SERVICES');
                  //Navigator.pop(context);
                },
                leading: IconButton(
                  icon: Icon(Icons.home_rounded),
                  onPressed: () {},
                ),
                title: Text('Home'),
//             trailing: Icon(Icons.home_rounded),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/10.1.BlogPost');
                  //Navigator.pop(context);
                },
                leading: IconButton(
                  icon: Icon(Icons.book_online),
                  onPressed: () {},
                ),
                title: Text('BlogPost'),
//              trailing: Icon(Icons.book_online),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/10.2.BlogView');
                  //Navigator.pop(context);
                },
                leading: IconButton(
                  icon: Icon(Icons.book_rounded),
                  onPressed: () {},
                ),
                title: Text('BlogView'),
//              trailing: Icon(Icons.book_rounded),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/11.2.0.Donation');
                  //Navigator.pop(context);
                },
                leading: IconButton(
                  icon: Icon(Icons.monetization_on_rounded),
                  onPressed: () {},
                ),
                title: Text('Donation'),
//              trailing: Icon(Icons.monetization_on_rounded),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/13.Statistics');
                  //Navigator.pop(context);
                },
                leading: IconButton(
                  icon: Icon(Icons.grading_rounded),
                  onPressed: () {},
                ),
                title: Text('BusinessData'),
//              trailing: Icon(Icons.grading_rounded),
              ),
              ListTile(
                onTap: (){
                  if ( providerData.signOut() == true)
                  {

                    Navigator.popUntil(context, ModalRoute.withName(StartView.viewName));
                  }
                },
                leading: IconButton(
                  icon:  Icon(Icons.logout),
                  onPressed: () {},
                ),
                title: Text('Sign Out'),
//              trailing: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      );
    },);
  }
}
