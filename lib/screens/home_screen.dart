import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile_starter_kit/modules/home_screen/recent_watched.dart';
import 'package:mobile_starter_kit/modules/home_screen/suggestion_movies.dart';
import 'package:mobile_starter_kit/modules/home_screen/user_profile.dart';
import 'package:mobile_starter_kit/store/counter/counter_store.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CounterStore _counterStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _counterStore = Provider.of<CounterStore>(context);
  }

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
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  style: const ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Colors.greenAccent)),
                                  onPressed: () =>
                                      _counterStore.incrementCounter(),
                                  child: const Text('Increase')),
                              const Spacer(),
                              Observer(builder: (_) {
                                return Text(
                                  '${_counterStore.counter}',
                                  style: Theme.of(context).textTheme.headline4,
                                );
                              })
                            ],
                          ),
                        ),
                        const SuggestionMovies(isShowTitle: true),
                        const RecentWatched(),
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
