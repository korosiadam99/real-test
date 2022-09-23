import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_test/src/models/subscription/subscription_model.dart';
import 'package:real_test/src/repositories/subscription_repository.dart';

part 'package:real_test/src/cubits/subscriptions/subscription_states.dart';
part 'subscription_cubit.freezed.dart';

class SubscriptionCubit extends Cubit<SubscriptionStates> {
  SubscriptionCubit() : super(const Initial()) {
    getSubscriptions();
  }

  Future<void> getSubscriptions() async {
    emit(
      const Loading(),
    );
    try {
      ///This dependency is not injected, this makes the cubit harder to test
      final subscriptions = await SubscriptionRepository().getSubscriptions();
      emit(
        Success(subscriptions),
      );
    } catch (e) {
      emit(
        Failure(
          e.toString(),
        ),
      );
    }
  }
}
