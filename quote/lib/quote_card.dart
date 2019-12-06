import 'package:flutter/material.dart';
import './quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quotes quo;
  final Function delete;

  QuoteCard({this.quo, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quo.quote,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: delete,
                  icon: Icon(
                    Icons.delete_forever,
                  ),
                  color: Colors.red,
                ),
                Text(
                  '--${quo.author}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
