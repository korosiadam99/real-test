import 'dart:convert';
import 'dart:developer';
import 'package:chopper/chopper.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

/// Custom converter to convert the response body to a Models
class FreezedConverter extends JsonConverter {
  const FreezedConverter(this.jsonDecoder);
  final FreezedJsonDecoder jsonDecoder;

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    if (response.bodyString.isEmpty) {
      return Response(response.base, null, error: response.error);
    }
    return response.copyWith<ResultType>(
      body: jsonDecoder.decode<Item>(jsonDecode(response.bodyString))
          as ResultType,
    );
  }
}

class FreezedJsonDecoder {
  FreezedJsonDecoder(this.factories);
  final Map<Type, JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }
    if (entity is T) {
      return entity;
    }
    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }
    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) => values
      .where((dynamic v) => v != null)
      .map<T>((dynamic v) => decode<T>(v) as T)
      .toList();
}
