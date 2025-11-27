import 'package:flutter/material.dart';
import 'package:test_001/WEEK-8/LAP/1%20-%20START%20CODE%201/1%20-%20START%20CODE/EXERCISE-4/model/joke_model.dart';


class FavoriteCard extends StatelessWidget {
  final Joke joke;
  final bool isFavorite;
  final Function(int id) onFavoriteSelected;

  const FavoriteCard({
    super.key,
    required this.joke,
    required this.isFavorite,
    required this.onFavoriteSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  joke.title,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(joke.description),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
            onPressed: () => onFavoriteSelected(joke.id),
          )
        ],
      ),
    );
  }
}
