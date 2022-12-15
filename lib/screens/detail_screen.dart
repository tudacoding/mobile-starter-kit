import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/modules/detail_screen/post_list.dart';
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
        length: 2,
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
                Tab(text: 'Users'),
                Tab(text: 'Posts'),
              ],
            ),
          ),
          body: Container(
            color: Theme.of(context).primaryColor,
            child: LayoutBuilder(
              builder: (context, constraints) => const TabBarView(
                children: [
                  Text('Users'),
                  PostsList(),
                ],
              ),
            ),
          ),
        ));
  }
}
