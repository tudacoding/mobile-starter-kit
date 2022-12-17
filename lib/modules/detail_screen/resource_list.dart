import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile_starter_kit/store/resource/resource_store.dart';
import 'package:provider/provider.dart';

class ResourceList extends StatefulWidget {
  const ResourceList({super.key});

  @override
  State<ResourceList> createState() => _ResourceListState();
}

class _ResourceListState extends State<ResourceList> {
  onPressed(store) async {
    await store.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ResourceStore>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Observer(builder: (_) {
              return Column(
                children: [
                  for (final resource in store.resources)
                    Text(resource.title.toString()),
                  ElevatedButton(
                      onPressed: () => onPressed(store),
                      child: const Text("Fetch Resources"))
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
