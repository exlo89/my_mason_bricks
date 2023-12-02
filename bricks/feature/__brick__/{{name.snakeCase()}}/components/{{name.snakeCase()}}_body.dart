import 'package:flutter/material.dart';
import 'package:{{{fullPath}}}/bloc/{{name.snakeCase()}}_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{name.pascalCase()}}Body extends StatelessWidget {
  const {{name.pascalCase()}}Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
      listener: (context, state) {
        if (state is {{name.pascalCase()}}{{event.pascalCase()}}Failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is {{name.pascalCase()}}{{event.pascalCase()}}InProgress) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const Center(child: Text('{{name}}'));
      },
    );
  }
}
