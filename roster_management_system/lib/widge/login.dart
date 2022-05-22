import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget { const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {return MaterialApp ( 
      title : 'Welcome to Roster Management System' , 
      home : Scaffold ( 
        appBar : AppBar ( 
          title : const Text ( 'Welcome to Roster Management System' ), ), 
        body : const Center ( child : Text ( '你好世界' ), ), 
        ), 
        ); 
        }           
          } 