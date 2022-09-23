import 'package:chopper/chopper.dart';
import 'package:real_test/src/services/export.dart';

///This tightly couples Chopper into the project
///What's the point of a repository interface if not loosening the coupling
///between the apps internal workings and the outside word.
///Also if you make a generic repository interface with one service attached to it,
///it makes harder to create a repository with multiple services,
///like a local data service for cache-ing, or a service to check network status
abstract class RepositoryInterface<T extends ChopperService> {
  T get service => apiService.getService<T>();
}
