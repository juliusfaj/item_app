import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:item_app/components/storage.dart';
import 'package:item_app/screens/home_screen.dart';
import 'package:item_app/theme/theme.dart';
import 'package:item_app/theme/util.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  runApp(const MyApp());
}

Future<void> initHive() async{
  Hive.init((await getApplicationDocumentsDirectory()).path);
  await Hive.openBox(rootBoxName);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode? mode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: mode ?? AppStorage.getThemeMode(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: MaterialTheme.lightScheme(),
        textTheme: createTextTheme(context, "Roboto", "Roboto"),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: MaterialTheme.darkScheme(),
        textTheme: createTextTheme(context, "Roboto", "Roboto"),
      ),
      home: HomeScreen(
        onThemeModeChanged: (mode){
          AppStorage.setThemeMode(mode);
          setState(() {
            this.mode = mode;
          });
        },
      ),
    );
  }
}

