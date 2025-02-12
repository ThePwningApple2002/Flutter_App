import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanumy_app_test/bloc/bloc/repository_bloc.dart';
import 'package:hanumy_app_test/bloc/events/repository_event.dart';
import 'package:hanumy_app_test/models/category.dart';
import 'package:hanumy_app_test/models/material.dart';
import 'package:hanumy_app_test/repositories/repository.dart';

void main() {
  runApp(
    RepositoryProvider(
      create: (context) => Repository(),
      child: BlocProvider(
        create: (context) =>
            RepositoryBloc(repository: context.read<Repository>()),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  final category = Kategorija(
                    id: 0,
                    name: "Test Category",
                    desc: "Description",
                    lang: "en",
                  );
                  context.read<RepositoryBloc>().add(
                        AddCategoryEvent(category),
                      );
                },
                child: Text('Add Category'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  final material = Materijal(
                    id: 0,
                    name: "Test Material",
                    lang: "en",
                  );
                  context.read<RepositoryBloc>().add(
                        AddMaterialEvent(material),
                      );
                },
                child: Text('Add Material'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
