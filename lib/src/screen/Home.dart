import 'package:flutter/material.dart';
import '../components/CardComponent.dart';
import 'AddExpenses.dart';

class Home extends StatefulWidget {
  Home({super.key});

  /* Map<String, dynamic> data = {
    "bank": [
      {"HDFC CARD", 50000, 30000, "but"},
      {"SBI-22 CARD", 30000, 20000, "but"},
      {"SBI-05 CARD", 60000, 27000, "but"}
    ]
  }; */
  Map<String, dynamic> data = {
    "bank": [
      {
        "bank": "HDFC CARD",
        "limit": 50000.0,
        "expenses": 30000.0,
      },
      {
        "bank": "SBI-2",
        "limit": 50000.0,
        "expenses": 30000.0,
      },
      {
        "bank": "SBI-5",
        "limit": 50000.0,
        "expenses": 30000.0,
      },
      {
        "bank": "One",
        "limit": 70000.0,
        "expenses": 30000.0,
      },
      {
        "bank": "RBL",
        "limit": 70000.0,
        "expenses": 30000.0,
      },
      {
        "bank": "PNB",
        "limit": 70000.0,
        "expenses": 30000.0,
      },
    ]
  };

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  expenses() {
    print("expenses hanu");

    setState(() {});
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Meney Control"),
        actions: [
          ElevatedButton(
            child: Text("add"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  // Builder for the nextpage class's constructor.
                  builder: (context) => AddExcepses(),
                ),
              );
            },
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
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 65, 79, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Hi Hanuman Ji !",
                    style: TextStyle(
                      color: Color.fromARGB(255, 249, 249, 247),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                for (var i in widget.data['bank'])
                  Container(
                    child: CardComponent(
                        bank: i['bank'],
                        limit: i['limit'],
                        expenses: i['expenses'],
                        btn: () => expenses()),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
