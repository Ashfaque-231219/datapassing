
import 'package:flutter/material.dart';
import 'package:datapassing/Welcome.dart';
void main(){
  runApp(MaterialApp(
   title: "Welcome to my data Passing Page",
    home: FirstPage(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),

  ));
}
class FirstPage extends StatelessWidget {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _address = new TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to My first Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _name,
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "Enter Your Name",
                  labelText: " Name",
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter Your E-mail",
                  labelText: " E-mail",
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _address,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "Enter Your Address",
                  labelText: " Address",
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomePage(name: _name.text, email: _email.text, address: _address.text)));
              }, child: Text("Go To Welcome Page")

              )

            ],
          ),
        ),
      ),
    );
  }
}
