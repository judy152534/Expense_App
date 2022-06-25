// import 'package:expense_app/widgets/new_transaction.dart';
// import 'package:flutter/cupertino.dart';
// import './transaction_list.dart';
// import '../Models/transaction.dart';

// class UserTransactions extends StatefulWidget {
//   @override
//   _userTransactionState createState() => _userTransactionState();
// }

// class _userTransactionState extends State<UserTransactions> {
//   final List<Transaction> _userTransactions = [
//     Transaction(id: 'd1', title: '鞋子', amount: 68.75, date: DateTime.now()),
//     Transaction(id: 'd2', title: '午餐', amount: 100.75, date: DateTime.now()),
//   ];

//   void _addNewTransaction(String txTitle, double txAmount) {
//     final newTx = Transaction(
//         id: DateTime.now().toString(),
//         title: txTitle,
//         amount: txAmount,
//         date: DateTime.now());

//     setState(() {
//       _userTransactions.add(newTx);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         NewTransaction(_addNewTransaction),
//         Expanded(child: TransactionList(_userTransactions)),
//       ],
//     );
//   }
// }
