import 'package:flutter/material.dart';
import 'package:textrally/screens/create_room_screen.dart';
import 'package:textrally/screens/home_screen.dart';
import 'package:textrally/screens/join_room_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Textrally Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const HomeScreen(),
        '/create-room' : (context) => const CreateRoomScreen(),
        '/join-room' : (context) => const JoinRoomScreen(),
      },
    );
  }
}
