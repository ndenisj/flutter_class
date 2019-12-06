import 'package:flutter/material.dart';
import './quotes.dart';
import './quote_card.dart';

void main() => runApp(Quote());

class Quote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quote App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quotes> quotes = [
    Quotes(
        quote: 'What we do to survive does not define who we are',
        author:'Denis J'
    ),
    Quotes(
        quote: 'Nothing comes easy',
        author:'Krystian'
    ),
    Quotes(
        quote: 'There is no cripple man but a cripple mind',
        author:'Christian'
    ),
    Quotes(
        quote: 'You will not learn in school what the world will do next year',
        author:'Henry Ford'
    ),
    Quotes(
        quote: 'The way to get started is to quit talking and begin doing',
        author:'Sammy'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Famous Quote',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((quote){
          return QuoteCard(
              quo:quote,
              delete: (){
                setState(() {
                  quotes.remove(quote);
                });
              },
          );
        }).toList(),
      ),
    );
  }
}
