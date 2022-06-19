import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: '輸入花費項目'),
                onChanged: (value) {
                  titleController.text = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: '輸入花費金額'),
                onChanged: (value) {
                  amountController.text = value;
                },
              ),
              FlatButton(
                  onPressed: () {
                    addTx(titleController.text,
                        double.parse(amountController.text));
                  },
                  child: Text('確認'),
                  textColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
