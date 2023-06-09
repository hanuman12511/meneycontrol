import 'package:flutter/material.dart';

class AddExcepses extends StatefulWidget {
  const AddExcepses({super.key});

  @override
  State<AddExcepses> createState() => _AddExcepsesState();
}

class _AddExcepsesState extends State<AddExcepses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
            child: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: Text("data"),
    );
  }
}
