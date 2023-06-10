import 'package:flutter/material.dart';

class CardPayment extends StatefulWidget {
  String? bank;
  double? limit;
  double? expenses;
  String? payDate;
  dynamic Function()? btn;
  CardPayment({this.bank, this.limit, this.expenses, this.btn, this.payDate});
  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * .88,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color.fromARGB(255, 87, 3, 255),
            Color.fromARGB(255, 127, 80, 222),
          ],
          tileMode: TileMode.mirror,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(children: [
        Text(
          "${widget.bank}=>DueDate(${widget.payDate})",
          style: TextStyle(
            color: Color.fromARGB(255, 126, 2, 2),
            fontSize: 16,
            backgroundColor: Colors.amber,
          ),
        ),
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            /*  Container(
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
            ), */
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Due Payment",
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
                  ElevatedButton(onPressed: widget.btn, child: Text("Pay Now")),
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }
}
