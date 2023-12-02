part of '{{name.snakeCase()}}_bloc.dart';

@immutable
abstract class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State();

  @override
  List<Object> get props => [];
}

class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}{{event.pascalCase()}}InProgress extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}{{event.pascalCase()}}Success extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}{{event.pascalCase()}}Failure extends {{name.pascalCase()}}State {
  final String error;

  const {{name.pascalCase()}}{{event.pascalCase()}}Failure({required this.error});
}
