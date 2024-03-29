import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String appName = "MyFirstApp";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Catalog App"),
      ),
      body: Container(
        child: Center(child: Text("Welcome to $appName")),
      ),
      drawer: const Drawer(),
    );
  }
}
