import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoapp/config/theme/app_theme.dart';
import 'package:videoapp/presentation/providers/discover_provider.dart';
import 'package:videoapp/presentation/screens/discover/discover_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> DiscoverProvider()..loadNextPage(),lazy: false,)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}

