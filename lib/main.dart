import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yuktidea_task_app/controllers/termsandconditions_controller.dart';
import 'package:yuktidea_task_app/views/startup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider( 
      providers: [
        ChangeNotifierProvider(create: (context) => TermsAndConditionsController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yuktidea Task App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: StartUpView(),
      ),
    );
  }
}
