import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forth Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
