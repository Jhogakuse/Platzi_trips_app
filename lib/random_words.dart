import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';
import 'search_appBar.dart';

class RandomWords extends StatefulWidget {
  String pathImg = "";
  RandomWords(this.pathImg);

  @override
  _RandomWordsState createState() => _RandomWordsState(pathImg);
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = Set<WordPair>();
  final _biggerFont = TextStyle(fontSize: 18.0);
  String pathImg = "";
  _RandomWordsState(this.pathImg);

  String rndNumber(){
    int rnd = new Random().nextInt(15);
    String year = (rnd == 1) ? 'year' : 'years';
    return (rnd < 10) ? '0$rnd $year': rnd.toString() + ' ' + year;
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.only(left: 0.0, top: 120.0, right: 10.0, bottom: 16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    final photo = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 0.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImg),
        ),
      ),
    );

    return ListTile(
      leading: photo,
      title: Container(
        margin: EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pair.asPascalCase,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
            Text(
              'Experience: ' + rndNumber(),
              style: TextStyle(fontSize: 12.0, color: Colors.black45),
            )
          ],
        ),
      ),
      trailing: Container(
        child: Icon(
          alreadySaved ? Icons.email : Icons.email,
          color: alreadySaved ? Colors.white : Colors.black26,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: alreadySaved ? Colors.red : Color.fromRGBO(246, 246, 246, 1),
        ),
        padding: EdgeInsets.all(10.0),
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
  void _pushSaved(){
    Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            final tiles = _saved.map((WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
              },
            );
            final divided = ListTile.divideTiles(
              context: context,
              tiles: tiles,
            ).toList();

            return Scaffold(
              appBar: AppBar(
                title: Text('Saved Suggestions'),
              ),
              body: ListView(children: divided),
            );
          },
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Designers'),
      //   actions: [
      //     IconButton(icon: Icon(Icons.list), onPressed: _pushSaved,),
      //   ],
      // ),
      body: Stack(
        children: [
          _buildSuggestions(),
          HeaderAppBar(),
          IconButton(
            padding: EdgeInsets.only(top: 55.0, left: 50.0),
            icon: Icon(
              Icons.list,
              color: Colors.white,
            ),
            onPressed: _pushSaved,
          ),
        ],
      ),
    );
  }
}
