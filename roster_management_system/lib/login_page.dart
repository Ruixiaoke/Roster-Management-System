import 'package:flutter/material.dart';

//login_page
class LoginPage extends StatefulWidget {

  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo= Image.asset(
      'pic/logo_RMS.jpg',
      width: 200,
      height: 200,
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'email',
      decoration: InputDecoration(
          hintText: 'please enter email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'xxxx',
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'please enter password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
           //Navigator.of(context).pushNamed(HomePage.tag);//点击跳转界面
          },
          color: Colors.blue,
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20.0),),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text('Forgot password??', style: TextStyle(color: Colors.black54, fontSize: 18.0),),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          children: <Widget>[
            logo,
            SizedBox(height: 50.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0,),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }

}
