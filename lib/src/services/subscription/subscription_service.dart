part of services;

@ChopperApi()
abstract class SubscriptionService extends ChopperService {
  static SubscriptionService create(ChopperClient client) =>
      _$SubscriptionService(client);

  @Get(path: 'subscriptions')
  Future<Response<List<SubscriptionModel>>> getSubscriptions();
}
