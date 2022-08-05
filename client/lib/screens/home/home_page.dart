import 'package:client/screens/bistream/bistream_page.dart';
import 'package:client/screens/greeting/greeting_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [
            Tab(
                child: Text(
              'hello',
              style: TextStyle(color: Colors.black),
            )),
            Tab(
              child: Text(
                'bistream',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
        title: const Text('gRPC client'),
      ),
      body: const TabBarView(
        children: [GreetingPage(), BiStreamPage()],
      ),
    );
  }
}
