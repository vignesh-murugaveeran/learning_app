import 'package:flutter/material.dart';
import 'package:learning_app/UI_Practice/ui_practice.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
GlobalKey<FormState> formKey = GlobalKey();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.grey.shade200)),
      home: const UIPractice(),
      // Scaffold(
      //   body: Column(
      //     children: [
      //       ///ValueKey
      //       Text(key: ValueKey('value1'), 'Hello'),
      //       Text(key: ValueKey('value2'), 'Hello world'),
      //       ListView(
      //         children: [
      //           for (int i = 0; i <= 10; i++)
      //             Text(key: ValueKey(i), 'Hello world $i'),
      //         ],
      //       ),

      //       ///ObjectKey
      //       Text(key: ObjectKey('value3'), 'Hello world2'),
      //       Text(key: ObjectKey(1), 'Hello world3'),

      //       ///UniqueKey
      //       Text(key: UniqueKey(), 'data'),

      //       Form(
      //         key: formKey,
      //         child: Column(
      //           children: [TextField(), TextField(), TextField(), TextField()],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
