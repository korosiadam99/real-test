import 'package:real_test/src/models/subscription/subscription_model.dart';
import 'package:real_test/src/resources/helpers/repository_interface.dart';
import 'package:real_test/src/services/export.dart';

class SubscriptionRepository extends RepositoryInterface<SubscriptionService> {
  factory SubscriptionRepository() {
    return _singleton;
  }

  SubscriptionRepository._internal();

  ///A good DI container (like riverpod) frees you up from creating singletons manually
  ///also, if something that SubscriptionRepository depends on changes internally, there is
  ///no easy way to propagate the change into the repository
  ///maybe the last one is just my design thing and
  /// the app can be built without propagating such changes
  static final SubscriptionRepository _singleton =
      SubscriptionRepository._internal();

  ///Why should this be static?
  /// Static methods belong to the class and can't use values of the instance
  Future<List<SubscriptionModel>> getSubscriptions() async {
    ///prefer final declarations if the value is not reassigned,
    ///this compiles down to a smaller and more performant machine code
    ///the new Flutter linter warns you about this.
    ///I recommend using a good linter with all best practice rules turned on.
    ///Helps building good coding habits.
    ///Once you can reason on why a specific rule isn't the way you want to do it
    ///feel free to turn those rules off, but just after understanding why
    ///other ppl felt like it's a good idea.
    final response = await service.getSubscriptions();
    if (!response.isSuccessful) {
      ///I will assume UnimplementedError is you saying that if given enough time
      ///you would've made some custom code here handling the response
      ///Either way, prefer exception messages to be in English,
      ///it's less mental gymnastics to do when reading the code if your brain
      ///doesn't have to switch between languages
      throw UnimplementedError('Ismeretlen hiba');

      ///An 'if' statement without an 'else' suggests that there is only one branch, that
      ///either runs or not, but everything after it runs anyways.
      ///Here the returning of the response.body! only runs if the statement is false.
      ///So putting it in 'else' conveys this either-or relation better for the reader
      ///*early returns are the exception for this best practice
    } else {
      return response.body!;
    }
  }
}
