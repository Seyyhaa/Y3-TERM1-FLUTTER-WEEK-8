import 'package:flutter/material.dart';
import 'package:test_001/WEEK-8/LAP/1%20-%20START%20CODE%201/1%20-%20START%20CODE/EXERCISE-4/data/jokes.dart';
import 'package:test_001/WEEK-8/LAP/1%20-%20START%20CODE%201/1%20-%20START%20CODE/EXERCISE-4/ui/favorite_card.dart';


Color appColor = Colors.green;

void main() => runApp(MaterialApp(
      home: FavoriteJokesPage(),
    ));

class FavoriteJokesPage extends StatefulWidget {
  const FavoriteJokesPage({super.key});

  @override
  State<FavoriteJokesPage> createState() => _FavoriteJokesPageState();
}

class _FavoriteJokesPageState extends State<FavoriteJokesPage> {
  int? favoriteJokeId; 

  void setFavorite(int id) {
    setState(() {
      favoriteJokeId = id; 
    });
  }
  List<Widget> getJokeCards() {
    return jokes.map((joke) {
      return FavoriteCard(
        joke: joke,
        isFavorite: favoriteJokeId == joke.id,
        onFavoriteSelected: setFavorite,
      );
    }).toList();}

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text("Favorite Jokes"),
      ),

      body: ListView(
        children: [

          ...getJokeCards(),
        ],
      ),
    );
  } }