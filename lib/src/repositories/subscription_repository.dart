import 'package:chopper/chopper.dart';
import 'package:real_test/src/models/subscription/subscription_model.dart';
import 'package:real_test/src/resources/helpers/repository_interface.dart';
import 'package:real_test/src/services/export.dart';

class SubscriptionRepository extends RepositoryInterface<SubscriptionService> {
  factory SubscriptionRepository() {
    return _singleton;
  }

  SubscriptionRepository._internal();

  static final SubscriptionRepository _singleton =
      SubscriptionRepository._internal();

  static Future<List<SubscriptionModel>> getSubscriptions() async {
    List<SubscriptionModel> subscriptions = [];
    Response<List<SubscriptionModel>> response =
        await _singleton.service.getSubscriptions();
    if (!response.isSuccessful) {
      throw UnimplementedError('Ismeretlen hiba');
    }
    subscriptions.addAll(response.body!);
    return subscriptions;
  }
}
