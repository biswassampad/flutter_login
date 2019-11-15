import 'package:flutter/material.dart';

void main()=>runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor: Color(0xFFFB415B),

    ),
    home:LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget{
  @override

  LoginPageState createState()  =>LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget  build(BuildContext context){
    return Scaffold(
      body:Container(
        padding:EdgeInsets.only(top:100.0,right:20.0,left:20.0,bottom:20.0),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sponikle',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
              'Login',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color:Theme.of(context).primaryColor
              ),
          ),
          SizedBox(height: 40.0,),
          buildTextField("Email"),
          SizedBox(height:20.0),
          buildTextFieldPassword("Password"),
          SizedBox(height:20.0),
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor
                  ),
                )
              ],
            )
          ),
          SizedBox(height: 50.0,),
          buildButtonContainer(),
          SizedBox(height: 30.0,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Dont Have an account ?",
                ),
                SizedBox(width:10.0),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color:Theme.of(context).primaryColor,
                    fontSize: 16.0
                ))
              ],
            ),
          )
        ],
      )
      ),
    );
  }
  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color:Colors.grey,
          fontSize: 16.0,
        ),
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        prefixIcon: Icon(Icons.email)
      ),
    );
  }

  Widget  buildTextFieldPassword(String hintText){
    return TextField(
       obscureText: true,
      decoration: InputDecoration(
         hintText: hintText,
         hintStyle: TextStyle(
           color:Colors.grey,
           fontSize: 16.0,
         ),
         border:OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0)
         ),
         prefixIcon: Icon(Icons.lock)
      ),
      
    );
  }


  Widget buildButtonContainer(){
    return Container(
      height: 56.0,
      width:MediaQuery.of(context).size.width,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
          colors:[
            Color(0xFFFB415B),
            Color(0xFFEE5623)
          ],
          begin:Alignment.centerRight,
          end:Alignment.centerLeft,
        ),
      ),
      child:Center(
        child:Text(
          "Login",
          style: TextStyle(
            color:Colors.white,
            fontSize: 18.0,
          ),
        )
      )
    );
  }
}