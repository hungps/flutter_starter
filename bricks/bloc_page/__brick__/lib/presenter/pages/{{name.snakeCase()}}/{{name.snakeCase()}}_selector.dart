import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/presenter/pages/{{name.snakeCase()}}/{{name.snakeCase()}}_bloc.dart';
import 'package:flutter_starter/presenter/pages/{{name.snakeCase()}}/{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}StatusSelector
    extends BlocSelector<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State, {{name.pascalCase()}}Status> {
  {{name.pascalCase()}}StatusSelector({
    required Widget Function({{name.pascalCase()}}Status data) builder,
  }) : super(
          selector: (state) => state.status,
          builder: (_, status) => builder(status),
        );
}

class {{name.pascalCase()}}StatusListener extends BlocListener<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}StatusListener({
    required Iterable<{{name.pascalCase()}}Status> statuses,
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status && statuses.contains(currentState.status),
        );
}
