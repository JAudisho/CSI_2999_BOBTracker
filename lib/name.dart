import 'package:flutter/material.dart';
import 'availability.dart';
void main() => runApp( MaterialApp(
    home: Intro()
));
class Intro extends StatelessWidget {

  var Name = TextEditingController();

  TextEditingController _name =  new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //"ENTER YOUR NAME" TEXT
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Enter Your Name',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            //NAME INPUT
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                          controller: _name,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter Name',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {}),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text('next!'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Availability()),
            );
          },
        ),
      ),
    );
  }
}
