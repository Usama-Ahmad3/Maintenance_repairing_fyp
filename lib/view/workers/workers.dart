import 'package:flutter/material.dart';

class Workers extends StatefulWidget {
  const Workers({super.key});

  @override
  State<Workers> createState() => _WorkersState();
}

class _WorkersState extends State<Workers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workers Screen"),
      ),
    );
  }
}
