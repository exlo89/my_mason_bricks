part of '{{name.snakeCase()}}_bloc.dart';

@immutable
abstract class {{name.pascalCase()}}Event extends Equatable {
  const {{name.pascalCase()}}Event();

  @override
  List<Object> get props => [];
}

class {{name.pascalCase()}}{{event.pascalCase()}}edEvent extends {{name.pascalCase()}}Event {
  const {{name.pascalCase()}}{{event.pascalCase()}}edEvent();
}
