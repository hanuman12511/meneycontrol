import 'package:flutter/material.dart';

class DetailsExpenses extends StatefulWidget {
  dynamic name;
  DetailsExpenses({super.key, this.name});

  @override
  State<DetailsExpenses> createState() => _DetailsExpensesState();
}

class _DetailsExpensesState extends State<DetailsExpenses> {
  @override
  Widget build(BuildContext context) {
    print("data=detals${widget.name}");
    return Scaffold(
      body: SafeArea(child: Text(widget.name['bank'])),
    );
  }
}
