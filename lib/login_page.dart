import 'package:flutter/material.dart';

import 'widget/reuseable_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    
    TextEditingController cpassController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("My Form"),
        backgroundColor: const Color.fromARGB(93, 17, 202, 189),
        foregroundColor: const Color.fromARGB(255, 22, 11, 62),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 2, 46, 65),
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Form",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold ,color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              textField(
                  "Name", Icons.person, TextInputType.text, nameController),
              SizedBox(
                height: 10,
              ),
              textField("Email", Icons.email, TextInputType.emailAddress,
                  emailController),
              SizedBox(
                height: 10,
              ),
              textField("Password", Icons.lock, TextInputType.visiblePassword,
                  cpassController),
              
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)),
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}