import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        height: double.infinity,
        color: Color(0xfffec107),
        child:  SingleChildScrollView(
          child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 150, vertical: 110),
                    child: Image.asset('assets/icons/icon.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  buildTextFormField(
                    hinttxt: 'Email',
                    icon: Icons.email,
                    txtinput: TextInputType.emailAddress,
                    obscure: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  buildTextFormField(
                    hinttxt: 'Password',
                    icon: Icons.lock,
                    txtinput: TextInputType.text,
                    obscure: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed( '/body');
                    },
                    child: Text("LOGIN",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    color:   Colors.black,
                     padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ) ,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        Text("Don't have any account",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),),
                        TextButton
                          (onPressed: (){},
                            child: Text('Sing Up',style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),))
                      ],
                    ),
                  ),
                  Text("I'm admin",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),

                ],
              ),
        ),
        ),
        
      
    );
  }

  Padding buildTextFormField(
      {required String hinttxt, required TextInputType txtinput, required IconData icon,bool? obscure}) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Color(0xffffe48d),
                filled: true,
                hintText: hinttxt ,
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: Color(0xffffe48d)),
                    borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(icon,color: Colors.black),
              ),
              keyboardType: txtinput,
              obscureText: obscure!,
            ),
          );
  }
}
