import 'package:flutter/material.dart';
import 'constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tenders App',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello,'),
        ),
        body: Center(
          child: const Text(
            'Flutter Demo Home Page',
          ),
        ),
      ),
    );
  }
}
