part of 'package:real_test/src/cubits/subscriptions/subscription_cubit.dart';

@freezed
class SubscriptionStates with _$SubscriptionStates {
  const factory SubscriptionStates.initial() = Initial;
  const factory SubscriptionStates.loading() = Loading;

  const factory SubscriptionStates.loadSuccess(
      List<SubscriptionModel> subscriptions) = Success;
  const factory SubscriptionStates.loadFailure(String errorMessage) = Failure;
}
