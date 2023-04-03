import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_starter/core/exception.dart';

part '{{name.snakeCase()}}_event.freezed.dart';

@freezed
class {{name.pascalCase()}}Event with _${{name.pascalCase()}}Event {
  const factory {{name.pascalCase()}}Event.errorOccurred([BaseException? error]) = {{name.pascalCase()}}ErrorOccurred;
}
