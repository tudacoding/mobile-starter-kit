import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/modules/home_screen/recent_watched.dart';
import 'package:mobile_starter_kit/modules/home_screen/suggestion_movies.dart';
import 'package:mobile_starter_kit/modules/home_screen/user_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: UserProfile(),
            ),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Movies'),
                Tab(text: 'TV Shows'),
                Tab(text: 'Anime'),
                Tab(text: 'My List'),
              ],
            ),
          ),
          body: Container(
            color: Theme.of(context).primaryColor,
            child: LayoutBuilder(
              builder: (context, constraints) => TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: const [
                        SuggestionMovies(isShowTitle: true),
                        RecentWatched()
                      ],
                    ),
                  ),
                  const Text('TV Shows'),
                  const Text('Anime'),
                  const Text('My List')
                ],
              ),
            ),
          ),
        ));
  }
}
