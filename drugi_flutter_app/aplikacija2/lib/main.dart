import 'package:aplikacija2/bloc/favorite_bloc/favorite_bloc.dart';
import 'package:aplikacija2/bloc/filter_bloc/bloc.dart';
import 'package:aplikacija2/bloc/place_bloc/bloc.dart';
import 'package:aplikacija2/repositories/places.dart';
import 'package:flutter/material.dart';
import 'package:aplikacija2/view/pages/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => Places())


      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => FilterBloc()),
          BlocProvider(create: (context) => PlaceBloc(context.read<Places> ())..add(LoadPlacesEvent()),),
          BlocProvider(create: (context) => FavoriteBloc(),)
        ],
      
      
        child: MaterialApp(
          home: IntroPage(),
          title: 'Flutter Demo',
         
        ),
      ),
    );
  }
}