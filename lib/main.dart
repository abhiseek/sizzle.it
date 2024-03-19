import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizzle.it/controller/profilescreen_controller/profilescreencontroller.dart';
import 'package:sizzle.it/controller/sharedprefcontroller/sharedprefcontroller.dart';
import 'package:sizzle.it/view/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SharedPrefController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileScreenController(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
      ),
    );
  }
}
