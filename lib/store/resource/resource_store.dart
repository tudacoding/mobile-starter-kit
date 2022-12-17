import 'package:get_it/get_it.dart';
import 'package:mobile_starter_kit/api/service/index.dart';
import 'package:mobile_starter_kit/models/resource/resource.dart';
import 'package:mobx/mobx.dart';
part 'resource_store.g.dart';

class ResourceStore = ResourceStoreBase with _$ResourceStore;

abstract class ResourceStoreBase with Store {
  final api = GetIt.I.get<ApiService>();
  @observable
  var resources = <Resource>[];

  @action
  fetchData() async {
    try {
      resources = await api.resource.find<Resource>(params: {
        "_limit": 10,
        "_skip": 0,
        "type": "video",
        "_sort": "createdAt:desc"
      });
    } catch (e) {
      return (e);
    }
  }
}
