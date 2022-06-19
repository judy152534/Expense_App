import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((transactions) {
        return Card(
            child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              padding: EdgeInsets.all(5),
              child: Container(
                child: Text(
                  '\$  ${transactions.amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
              ),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(transactions.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 24, color: Colors.black)),
                  ),
                  Container(
                    child: Text(
                      DateFormat('yyyy/MM/dd').format(transactions.date),
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
      }).toList(),
    );
  }
}
