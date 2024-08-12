import 'package:flutter/material.dart';

void main() {
  runApp(const GreetingApp());
}

class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeAcctivity(),
    );
  }
}

class HomeAcctivity extends StatelessWidget {
  const HomeAcctivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Hello, World!",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Welcome to Flutter!"),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://th.bing.com/th/id/R.c940e427945a4d75c296f346cfb78cb7?rik=oxEpM63SpT0ClQ&pid=ImgRaw&r=0',
              width: 300,
              height: 300,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Button Pressed!"),
                  ),
                );
              },
              child: const Text("Click me"),
            ),
          ],
        ),
      ),
    );
  }
}
