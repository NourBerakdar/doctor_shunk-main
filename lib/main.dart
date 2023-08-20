import 'package:doctor_shunk/results.dart';
import 'package:doctor_shunk/shared/cubit/cubit.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'choices diagnosis/diagnosis disease.dart';
import 'choices diagnosis/gait analysis.dart';
import 'choices diagnosis/mental status/screen1.dart';
import 'home.dart';

void main() {
  // Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AppCubit>(
            create: (BuildContext context) => AppCubit(),
          ),
        ],
        child: BlocConsumer<AppCubit, AppStates>(
            listener: (BuildContext context, AppStates state) {},
            builder: (BuildContext context, AppStates state) {
              // AppCubit cubit = AppCubit.get(context);
              return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  routes: {
                    // When navigating to the "/" route, build the FirstScreen widget.
                    // '/': (context) =>  Home(),
                    // When navigating to the "/second" route, build the SecondScreen widget.
                    '/first': (context) => DiagnosisDisease(),
                    'second': (context) => SlumsTestScreen1(),
                    'third': (context) => GaitAnalysis(),
                    'results': (context) => Results(),
                  },
                  home: Home());
            }));
  }
}
