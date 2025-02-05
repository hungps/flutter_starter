import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/di.dart';
import 'package:flutter_starter/presenter/pages/{{name.snakeCase()}}/{{name.snakeCase()}}_bloc.dart';

// TODO: Add the page to the router
@RoutePage()
class {{name.pascalCase()}}Page extends StatefulWidget implements AutoRouteWrapper {
  const {{name.pascalCase()}}Page();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<{{name.pascalCase()}}Bloc>(
      create: (ctx) => provider.get<{{name.pascalCase()}}Bloc>(),
      child: this,
    );
  }

  @override
  State<{{name.pascalCase()}}Page> createState() => _{{name.pascalCase()}}PageState();
}

class _{{name.pascalCase()}}PageState extends State<{{name.pascalCase()}}Page> {
  {{name.pascalCase()}}Bloc get _bloc => context.read<{{name.pascalCase()}}Bloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{name.titleCase()}} Page'),
      ),
      body: const Center(
        child: Text('{{name.titleCase()}} Page'),
      ),
    );
  }
}
