import 'package:flutter/material.dart';
import 'package:signin/services/authenticate.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final Authenticate _auth = Authenticate();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],

      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('SignIn'),
      ),

      body: Container(

        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: RaisedButton(
          child: Text('Sign In Anonymously'),
            onPressed: () async {
            dynamic result = await _auth.signinAnon();

            if (result == null) {
              print("User  not Signed In");
              }
              else {
                print("User Signed In)");
                print(result);
                
                Navigator.pushNamed(context, '/home');
            }

            },
        ),

      ),
    );
  }
}
