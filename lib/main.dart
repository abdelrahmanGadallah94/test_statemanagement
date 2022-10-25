import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_statemanagement/controller/provider/counter%20provider.dart';
import 'package:test_statemanagement/controller/provider/navigator%20provider.dart';
import 'package:test_statemanagement/view/pages/home.dart';
import 'package:test_statemanagement/view/pages/home2.dart';
import 'package:test_statemanagement/view/pages/task.dart';

import 'controller/provider/task/counter task.dart';
import 'controller/provider/task/countertask2.dart';
import 'controller/provider/test counter.dart';
import 'controller/provider/test navigator provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterTask()),
        ChangeNotifierProvider(create: (context) => CounterRightSide()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Task(),
      ),
    );
  }
}

/*
* MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider(),),
      ChangeNotifierProvider(create: (context) => NavigatorProvider(),)
    ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home(title: 'Flutter Demo Home Page'),
        )
    );
* */
