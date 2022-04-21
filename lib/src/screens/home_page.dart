import 'package:flutter/material.dart';
import '../models/transaction.dart';

class HomePage extends StatelessWidget {
  final List<Transaction> data = [
    Transaction(id: 1, title: 'New Shoes', amount: 25.99, date: DateTime.now()),
    Transaction(
        id: 2, title: 'Electric Bill', amount: 36.99, date: DateTime.now()),
    Transaction(id: 3, title: 'Pizza', amount: 7.99, date: DateTime.now()),
    Transaction(id: 4, title: 'Lottery', amount: 99.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Chart'),
                elevation: 5,
              ),
            ),
            Card(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ...buildTransactionList(context),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  buildTransactionList(BuildContext context) {
    return data.map((e) => buildTransactionRow(e)).toList();
  }

  buildTransactionRow(Transaction transaction_) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Text(transaction_.title, style: textStyle),
    );
  }
}

const textStyle = TextStyle(fontSize: 24);
