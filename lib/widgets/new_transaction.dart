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
          height: 150,
          // constraints: BoxConstraints.,
          padding: EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(labelText: '輸入花費項目'),
                    onChanged: (value) {
                      titleController.text = value;
                    },
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(labelText: '輸入花費金額'),
                    onChanged: (value) {
                      amountController.text = value;
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: FlatButton(
                    onPressed: () {
                      addTx(titleController.text,
                          double.parse(amountController.text));
                    },
                    textColor: Colors.purple,
                    child: Container(
                      child: Text('確認',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
