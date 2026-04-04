import 'dart:io';
import 'package:mason/mason.dart';
import 'package:recase/recase.dart';

void run(HookContext context) {
  final name = context.vars['name'] as String;
  final rc = ReCase(name);
  final snakeCase = rc.snakeCase;
  final pascalCase = rc.pascalCase;
  final paramCase = rc.paramCase; // kebab-case

  final navFile = File('lib/presenter/navigation/navigation.dart');
  if (!navFile.existsSync()) {
    context.logger.warn('navigation.dart not found; skipping route registration');
    return;
  }

  var content = navFile.readAsStringSync();

  // Add import (idempotent)
  final importLine =
      "import 'package:flutter_starter/presenter/pages/$snakeCase/$snakeCase.dart';";
  if (!content.contains(importLine)) {
    content = content.replaceFirst(
      "\npart 'navigation.gr.dart';",
      "\n$importLine\npart 'navigation.gr.dart';",
    );
  }

  // Insert route above marker
  final lines = content.split('\n');
  final markerIndex = lines.indexWhere(
    (l) => l.contains('// mason:bloc_page - Add routes here'),
  );
  if (markerIndex == -1) {
    context.logger.warn('Marker not found in navigation.dart; writing import only');
    navFile.writeAsStringSync(content);
    return;
  }

  // Detect indentation from first existing AutoRoute line
  String indent = '        '; // 8-space fallback
  final routeRegex = RegExp(r'^(\s+)AutoRoute\(');
  for (final line in lines) {
    final match = routeRegex.firstMatch(line);
    if (match != null) {
      indent = match.group(1)!;
      break;
    }
  }

  lines.insert(
    markerIndex,
    "${indent}AutoRoute(path: '/$paramCase', page: ${pascalCase}Route.page),",
  );

  navFile.writeAsStringSync(lines.join('\n'));
  context.logger.success('Registered ${pascalCase}Route in navigation.dart');
}
