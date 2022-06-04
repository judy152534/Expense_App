import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 'd1', title: '鞋子', amount: 68.75, date: DateTime.now()),
    Transaction(id: 'd2', title: '午餐', amount: 100.75, date: DateTime.now()),
  ];

  String? titleInput;
  String? amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Chart'),
              elevation: 5,
              color: Colors.amberAccent,
              borderOnForeground: true,
            ),
          ),
          Card(
            elevation: 5,
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: '輸入花費項目'),
                    onChanged: (value) {
                      titleInput = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: '輸入花費金額'),
                    onChanged: (value) {
                      amountInput = value;
                    },
                  ),
                  FlatButton(
                      onPressed: () {
                        print(titleInput);
                        print(amountInput);
                      },
                      child: Text('確認'),
                      textColor: Colors.purple),
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((trans) {
              return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$  ${trans.amount}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                    ),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.purple)),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(trans.title,
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black)),
                        ),
                        Container(
                          child: Text(
                            DateFormat('yyyy/MM/dd').format(trans.date),
                            textAlign: TextAlign.left,
                            style:
                                TextStyle(fontSize: 18, color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ));
            }).toList(),
          ),
        ],
      ),
    );
  }
}
