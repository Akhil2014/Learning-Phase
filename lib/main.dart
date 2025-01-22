import 'package:flutter/material.dart';
import 'package:learning_git_flutter/akhil/women_screen.dart';
import 'package:learning_git_flutter/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.homePage,
      routes: Routes.getRoutes(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  onPressed(page){
    if(page == 'men'){

    }else if(page =='women') {
      Navigator.pushNamed(context, Routes.womenPage);
    }
    print('open ${page}'); // open pages here -- learning navigator class
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learning"),
        ),
        body:Center(
          child: Column(
            children: [
             ElevatedButton(onPressed: () => onPressed('men'), child: Text('Men Section')),
             ElevatedButton(onPressed: () => onPressed('women'), child: Text('Women Section'))
            ],
          ),
        )
    );
  }
}
