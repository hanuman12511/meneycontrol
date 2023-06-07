import 'package:flutter/material.dart';
import '../components/CardComponent.dart';

class Home extends StatefulWidget {
  Home({super.key});

  Map<String, dynamic> data = {
    "bank": [
      {"HDFC CARD", 50000, 30000, "but"},
      {"SBI-22 CARD", 30000, 20000, "but"},
      {"SBI-05 CARD", 60000, 27000, "but"}
    ]
  };
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  addExpenses() {}
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Meney Control"),
        actions: [
          FloatingActionButton(
            onPressed: addExpenses,
            child: Icon(
              Icons.add_box,
              size: 30,
              color: Color.fromARGB(255, 228, 3, 3),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 248, 247, 246),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * .88,
                  height: height * .1,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 162, 197, 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("Hi Hanuman Ji !"),
                ),
                widget.data['bank'].map((key, value) => value.forEach((v) {
                      print(v);
                      /* Container(
                        child: CardComponent(
                            bank: value,
                            limit: 5000,
                            expenses: 2000,
                            btn: "oclick"),
                      ); */
                    }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
