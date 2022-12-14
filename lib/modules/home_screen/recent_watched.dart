import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/modules/home_screen/suggestion_movies.dart';

class RecentWatched extends StatelessWidget {
  const RecentWatched({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Recent Watched',
                style: TextStyle(color: Theme.of(context).primaryColorDark),
              ),
              const Spacer(),
              Text(
                'See All',
                style: TextStyle(color: Theme.of(context).primaryColorDark),
              ),
            ],
          ),
          const SuggestionMovies(
            isShowTitle: false,
          )
        ],
      ),
    );
  }
}
