import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Helper/utii.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailText = TextEditingController();
    var passText = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text("Input Field"),
        ),
        body: Center(
            child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                keyboardType: TextInputType.emailAddress,      
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2.5,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.5,
                        )),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.blueGrey,
                    )),
              ),
              Container(
                height: 11,
              ),
              TextField(
                controller: passText,
                obscureText: true,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                        width: 2.5,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.5,
                      )),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.blueGrey),
                    onPressed: () {
                      
                    },
                  ),
                ),
              ),
              Container(height: 8),
              ElevatedButton(
                  onPressed: () {
                    String userEmail = emailText.text.toString();
                    String userPassword = passText.text;

                    print('Email: $userEmail, Password: userPassword');
                  },
                  child: Text(
                    'Login',
                  ))
            ],
          ),
        )));
  }
}
