import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{{fullPath}}}/bloc/{{name.snakeCase()}}_bloc.dart';
import 'package:{{{fullPath}}}/components/{{name.snakeCase()}}_body.dart';

@RoutePage()
class {{name.pascalCase()}}Screen extends StatefulWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  State<{{name.pascalCase()}}Screen> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen> {
  late {{name.pascalCase()}}Bloc bloc;

  @override
  void initState() {
    bloc = {{name.pascalCase()}}Bloc();
    bloc.add(const {{name.pascalCase()}}{{event.pascalCase()}}edEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => bloc,
        child: Scaffold(
        appBar: AppBar(title: const Text('{{name.pascalCase()}}')),
        body: const {{name.pascalCase()}}Body(),
      ),
    );
  }
}
