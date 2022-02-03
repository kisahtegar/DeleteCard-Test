import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:legacy_buttons/legacy_buttons.dart';

class QuoteCard extends StatelessWidget {
  final Quote? quote1;
  final void Function()? delete;
 
  QuoteCard({this.quote1, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote1!.text!,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote1!.author!,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600]
              )
            ),
            SizedBox(height:8),
            LegacyFlatButton.icon(
              onPressed: delete,
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete)
            ),
          ],
        ),
      )
    );
  }
}