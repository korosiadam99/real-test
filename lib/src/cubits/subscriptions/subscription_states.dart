part of 'package:real_test/src/cubits/subscriptions/subscription_cubit.dart';

@freezed
class SubscriptionStates with _$SubscriptionStates {
  const factory SubscriptionStates.initial() = Initial;
  const factory SubscriptionStates.loading() = Loading;

  ///tha name "Success" is too generic. If the app has multiple pieces of state
  ///this would collide. I propose SubscriptionStateSuccess or SubscriptionSuccessState
  ///Starting with "Subscription" would make autocomplete easy, once multiple Success states
  ///are introduced to the app
  const factory SubscriptionStates.loadSuccess(
      List<SubscriptionModel> subscriptions) = Success;
  const factory SubscriptionStates.loadFailure(String errorMessage) = Failure;
}
