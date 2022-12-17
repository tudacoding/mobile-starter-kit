enum EnvironmentType { dev, prod }

abstract class IEnvironment {
  late EnvironmentType env;
  late String vendorId;
  late String clientId;
  late String vendorUrl;
  late String s3BucketUrl;
  late String baseUrl;
  late String authencationUrl;
  late String userUrl;
  late String groupUrl;
  late String learnUrl;
  late String examUrl;
  late String paymentUrl;
  late String s3ApiUrl;
  late String resourceUrl;
  late String ratingUrl;
  late String notificationUrl;
  late String commentUrl;
  late String ultility;
  late String permissionUrl;
}

// https://ba1ivf36re.execute-api.ap-southeast-1.amazonaws.com/prod/homepage-mobile/23b0bfb0-c00b-11e9-a060-17d3861b7dev?sectionId=4
class DevEnv implements IEnvironment {
  @override
  EnvironmentType env = EnvironmentType.dev;

  @override
  String vendorId = "23b0bfb0-c00b-11e9-a060-17d3861b7a5b";
  @override
  String clientId = "5b9fe4a1-c26d-11e9-9c94-9ba8d9c5743a";
  @override
  String s3BucketUrl =
      "https://online-learning-izteach-3-test-aws-source-bucket.s3-ap-southeast-1.amazonaws.com/";

  @override
  String baseUrl =
      "https://ilx0gvnp3c.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String authencationUrl =
      "https://s0ibt2s0sk.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String userUrl =
      "https://bx0oechgpl.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String learnUrl =
      "https://p7xaql0mdg.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String groupUrl =
      "https://qv826tg5zf.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String paymentUrl =
      "https://13f2rdwja7.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String examUrl =
      "https://3prh451iq0.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String s3ApiUrl =
      "https://ilx0gvnp3c.execute-api.ap-southeast-1.amazonaws.com/";
  @override
  String resourceUrl =
      "https://7tzfwfq4pd.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String ratingUrl =
      "https://65fygwae5a.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String notificationUrl =
      "https://op1cw6jl73.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String commentUrl =
      "https://acgtrvkfy9.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String vendorUrl =
      "https://cd30nboy73.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String ultility =
      "https://uo8x9gkkkd.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String permissionUrl =
      "https://xa1z82rpu9.execute-api.ap-southeast-1.amazonaws.com/prod/";
}

class ProdEnv implements IEnvironment {
  @override
  EnvironmentType env = EnvironmentType.prod;

  @override
  String vendorId = "12bb4084-65ac-45ef-81af-ffd230a4ca64";
  @override
  String clientId = "5b9fe4a1-c26d-11e9-9c94-9ba8d9c5743a";
  @override
  String s3BucketUrl =
      "https://online-learning-izteach-3-aws-source-bucket.s3-ap-southeast-1.amazonaws.com/";

  @override
  String baseUrl =
      "https://wj7b91qpll.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String authencationUrl =
      "https://zp21l6ud68.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String userUrl =
      "https://43i8iw7cq8.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String learnUrl =
      "https://cwl2xau78j.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String groupUrl =
      "https://e4fzfxtvh2.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String paymentUrl =
      "https://2giype3lii.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String examUrl =
      "https://iptoqoeg36.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String s3ApiUrl =
      "https://wj7b91qpll.execute-api.ap-southeast-1.amazonaws.com/";
  @override
  String resourceUrl =
      "https://akprowk3pj.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String ratingUrl =
      "https://wix7qzdtbg.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String notificationUrl =
      "https://kaderftq99.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String commentUrl =
      "https://i548gc53y0.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String vendorUrl =
      "https://g40w6st7di.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String ultility =
      "https://300fvfgteh.execute-api.ap-southeast-1.amazonaws.com/prod/";
  @override
  String permissionUrl =
      "https://3kv9lhxfki.execute-api.ap-southeast-1.amazonaws.com/prod/";
}

IEnvironment currentEnv = ProdEnv();
