import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  String? bank;
  double? limit;
  double? expenses;
  String? btn;
  CardComponent({this.bank, this.limit, this.expenses, this.btn});

  @override
  State<CardComponent> createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * .88,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 162, 197, 3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(children: [
        Text(
          "${widget.bank}",
          style: TextStyle(
            color: Color.fromARGB(255, 126, 2, 2),
            fontSize: 20,
            backgroundColor: Colors.amber,
          ),
        ),
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Limit",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15),
                  ),
                  Text(
                    "Rs. ${widget.limit}/-",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Expenses",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15),
                  ),
                  Text(
                    "Rs.${widget.expenses}/-",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20),
                  ),
                  Icon(
                    Icons.remove_red_eye_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 193, 3, 44),
                  )
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }
}
