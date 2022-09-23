library services;

import 'package:chopper/chopper.dart';
import 'package:real_test/src/models/subscription/subscription_model.dart';
import 'package:real_test/src/resources/helpers/key_helper.dart';
import 'package:real_test/src/services/converter.dart';

part 'export.chopper.dart';
part 'package:real_test/src/services/subscription/subscription_service.dart';

final apiService = ChopperClient(
  baseUrl: KeyHelper.baseUrl,
  services: [
    SubscriptionService.create(
      ChopperClient(),
    ),
  ],
  interceptors: [],
  converter: FreezedConverter(
    FreezedJsonDecoder(
      {SubscriptionModel: SubscriptionModel.fromJson},
    ),
  ),
  errorConverter: const JsonConverter(),
);
