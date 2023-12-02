import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super({{name.pascalCase()}}Initial()) {
    on<{{name.pascalCase()}}{{event.pascalCase()}}edEvent>(_on{{name.pascalCase()}}{{event.pascalCase()}}edEvent);
  }

  Future<void> _on{{name.pascalCase()}}{{event.pascalCase()}}edEvent(
    {{name.pascalCase()}}{{event.pascalCase()}}edEvent event,
    Emitter<{{name.pascalCase()}}State> emit,
  ) async {
    try {
      emit({{name.pascalCase()}}{{event.pascalCase()}}InProgress());
      // TODO implement logic
      emit({{name.pascalCase()}}{{event.pascalCase()}}Success());
    } catch (error) {
      emit({{name.pascalCase()}}{{event.pascalCase()}}Failure(error: error.toString()));
    }
  }
}
