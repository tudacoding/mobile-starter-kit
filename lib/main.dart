import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/modules/home_screen/suggestion_movies.dart';
import 'package:mobile_starter_kit/modules/home_screen/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 30, 30, 30),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

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
            color: Colors.black,
            child: LayoutBuilder(
              builder: (context, constraints) => TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: const [SuggestionMovies()],
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
