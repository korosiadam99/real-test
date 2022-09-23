import 'package:chopper/chopper.dart';
import 'package:real_test/src/services/export.dart';

abstract class RepositoryInterface<T extends ChopperService> {
  T get service => apiService.getService<T>();
}
