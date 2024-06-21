import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/explore/explore.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAnmyKaB5k-a-j4T02jDO4jgReNEr8GXmg",
      authDomain: "tik-tok-clone-1428a.firebaseapp.com",
      projectId: "tik-tok-clone-1428a",
      storageBucket: "tik-tok-clone-1428a.appspot.com",
      messagingSenderId: "483773301772",
      appId: "1:483773301772:web:57e1288cf6393efe81da29",
      measurementId: "G-YWC0KR2YD0"
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tik Tok',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Explore(),
    );
  }
}