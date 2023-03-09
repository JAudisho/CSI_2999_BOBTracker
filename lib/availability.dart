import 'package:flutter/material.dart';
import 'home.dart';
void main() => runApp(const MaterialApp(
    home: Availability()
));

class Availability extends StatefulWidget {
  const Availability({Key? key}) : super(key: key);

  @override
  State<Availability> createState() => _AvailabilityState();
}

class _AvailabilityState extends State<Availability> {
  bool sun = false;
  bool mon = false;
  bool tue = false;
  bool wed = false;
  bool thr = false;
  bool fri = false;
  bool sat = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select your availability below!'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
              value: sun,
              onChanged: (val){
                setState(() {
                  sun = val!;
                });
              },
            activeColor: Colors.green,
            title: const Text('Sunday'),
          ),
          CheckboxListTile(
            value: mon,
            onChanged: (val){
              setState(() {
                mon = val!;
              });
            },
            activeColor: Colors.green,
            title: const Text('Monday'),
          ),
          CheckboxListTile(
            value: tue,
            onChanged: (val){
              setState(() {
                tue = val!;
              });
            },
            activeColor: Colors.green,
            title: const Text('Tuesday'),
          ),
          CheckboxListTile(
            value: wed,
            onChanged: (val){setState(() {
              wed = val!;
            });
            },
            activeColor: Colors.green,
            title: const Text('Wednesday'),
          ),
          CheckboxListTile(
            value: thr,
            onChanged: (val){
              setState(() {
                thr = val!;
              });
            },
            activeColor: Colors.green,
            title: const Text('Thursday'),
          ),CheckboxListTile(
            value: fri,
            onChanged: (val){setState(() {
              fri = val!;
            });
            },
            activeColor: Colors.green,
            title: const Text('Friday'),
          ),
          CheckboxListTile(
            value: sat,
            onChanged: (val){setState(() {
              sat = val!;
            });
            },
            activeColor: Colors.green,
            title: const Text('Saturday'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Finish!'),
        onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    },
      ),
    );
  }
}


