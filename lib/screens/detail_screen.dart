import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_starter_kit/modules/home_screen/user_profile.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Text('Detail Page'),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => GoRouter.of(context).go('/'),
                    child: const Text("Go to Home page"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
