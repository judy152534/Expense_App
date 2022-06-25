import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        // constraints: BoxConstraints.tight(Size.fromHeight(150)),
        // ListView = Column + SingleScrollView
        // must be constrained in a range(ex.Container height), otherwise infinitive
        // for a large list, "ListView.builder" only render visible item
        // compare to "ListView(children[])"
        child: transactions.isEmpty
            ? Column(children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 200,
                  alignment: Alignment(0.09, 0),
                  child: Image.asset(
                    'assets/images/notepad.png',
                    fit: BoxFit.cover,
                  ),
                ),
                // sizeBox provides spaces
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Add some new Records!',
                  style: TextStyle(fontSize: 28),
                )
              ])
            : ListView.builder(
                itemCount: transactions.length,
                itemBuilder: ((context, index) {
                  return Card(
                      child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 15.0),
                        padding: EdgeInsets.all(5),
                        child: Container(
                          child: Text(
                            transactions[index].amount.toStringAsFixed(2),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple)),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(transactions[index].title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.black)),
                            ),
                            Container(
                              child: Text(
                                DateFormat('yyyy/MM/dd')
                                    .format(transactions[index].date),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blueGrey),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ));
                }),
              ));
  }
}
