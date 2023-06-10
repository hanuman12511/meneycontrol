import 'package:flutter/material.dart';
import 'package:moneycontrol/src/screen/DetailsExpenses.dart';
import '../components/CardComponent.dart';
import '../components/CardPayment.dart';
import 'AddExpenses.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  Home({super.key});
  /* DateTime today = DateTime.now();
  String dateStr = "${today.day}-${today.month}-${today.year}"; */
  String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
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
        "payDate": "2023-6-16"
      },
      {
        "bank": "SBI-2",
        "limit": 50000.0,
        "expenses": 30000.0,
        "payDate": "2023-6-13"
      },
      {
        "bank": "SBI-5",
        "limit": 50000.0,
        "expenses": 30000.0,
        "payDate": "2023-6-20"
      },
      {
        "bank": "One",
        "limit": 70000.0,
        "expenses": 30000.0,
        "payDate": "2023-6-17"
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
        "payDate": "2023-6-16"
      },
    ]
  };

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  expenses(dynamic n) {
    print("expenses${n}");
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => DetailsExpenses(name: n)));

    setState(() {});
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.payments_rounded,
              ),
              child: Text("Expenses"),
            ),
            Tab(
              icon: Icon(Icons.payment_rounded),
              child: Text("Payment"),
            )
          ]),
          title: const Text("Meney Control"),
          actions: [
            ElevatedButton(
              child: const Text("add"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    // Builder for the nextpage class's constructor.
                    builder: (context) => const AddExcepses(),
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 248, 247, 246),
        body: SafeArea(
          child: Center(
            child: TabBarView(
              children: [
                Container(
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
                          child: const Text(
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
                                btn: () => expenses(i)),
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
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
                            "Hi Hanuman Ji ! ${widget.currentDate}",
                            style: TextStyle(
                              color: Color.fromARGB(255, 249, 249, 247),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        for (var i in widget.data['bank'])
                          Container(
                            child: CardPayment(
                                bank: i['bank'],
                                limit: i['limit'],
                                expenses: i['expenses'],
                                payDate: i['payDate'],
                                btn: () => expenses(i)),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
