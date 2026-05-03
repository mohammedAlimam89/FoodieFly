import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/restaurant.dart';
import 'pages/home_page.dart';
import 'themes/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => Restaurant()),
      ],
      child: const FoodieFlyApp(),
    ),
  );
}

class FoodieFlyApp extends StatelessWidget {
  const FoodieFlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          title: 'FoodieFly',
          debugShowCheckedModeBanner: false,
          theme: themeProvider.themeData,
          home: const HomePage(),
        );
      },
    );
  }
}
