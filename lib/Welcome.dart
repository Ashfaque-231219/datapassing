import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
String name,email,address ;


WelcomePage({ required this.name,  required this.email,required this.address});

@override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("This is The Welcome Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(

          child: Column(


            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [


              Text("Name : ${name}", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.teal,
              ),
              ),
              SizedBox(height: 15,),
              Text("E-mail : ${email}", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.teal,
              ),
              ),
              SizedBox(height: 15,),
              Text("Address : ${address}", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.teal,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
