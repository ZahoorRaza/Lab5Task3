import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

void Change()
{
  bool change = false;
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Hero(tag: "Hello World!!!", child: Image.asset("assets/1.jpg",
              height: 400,
              width: double.infinity,),),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen(),),
                );
              },
              child: Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Hero(tag: "GoodNight World!!!", child: Image.asset("assets/2.jpg",
              height: 400,
              width: double.infinity,),),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstScreen()),
                );
              },
              child: Text('Go to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

