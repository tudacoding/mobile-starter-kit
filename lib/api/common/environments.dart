enum EnvironmentType { dev, prod }

abstract class IEnvironment {
  late EnvironmentType env;
  late String vendorId;
  late String authencationUrl;
  late String resourceUrl;
}

const protocol = "https://";
const domain = ".execute-api.ap-southeast-1.amazonaws.com/prod/";

class DevEnv implements IEnvironment {
  @override
  EnvironmentType env = EnvironmentType.dev;

  @override
  String vendorId = "23b0bfb0-c00b-11e9-a060-17d3861b7a5b";
  @override
  String authencationUrl = "${protocol}s0ibt2s0sk$domain";
  @override
  String resourceUrl = "${protocol}7tzfwfq4pd$domain";
}

class ProdEnv implements IEnvironment {
  @override
  EnvironmentType env = EnvironmentType.prod;

  @override
  String vendorId = "23b0bfb0-c00b-11e9-a060-17d3861b7a5b";
  @override
  String authencationUrl = "${protocol}s0ibt2s0sk$domain";
  @override
  String resourceUrl = "${protocol}7tzfwfq4pd$domain";
}

IEnvironment currentEnv = DevEnv();
