import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:soda_project_final/firebase_options.dart';
import 'package:provider/provider.dart';
import 'onboarding.dart';
import 'page_folder/custompage/custom_main_page.dart';
import 'page_folder/custompage/custom_page.dart';
import 'provider/appstate_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MyAppState(),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/customMain': (context) => const CustomMainPage(),
          '/custom': (context) => const CustomPage(),
        },
        debugShowCheckedModeBanner: false,
        home: const OnboardingPage(),
      ),
    );
  }
}
