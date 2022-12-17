import 'package:mobile_starter_kit/api/common/api_handler.dart';
import 'package:mobile_starter_kit/api/common/environments.dart';
import 'package:mobile_starter_kit/models/resource/resource.dart';

class ResourceApiHandler extends ApiHandler {
  ResourceApiHandler()
      : super(currentEnv.resourceUrl, routeMap: {Resource: "resource"});
}
