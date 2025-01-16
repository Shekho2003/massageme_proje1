import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:massageme_proje/screens/chat_screen.dart';
import 'package:massageme_proje/screens/registration_screen.dart';
import 'package:massageme_proje/screens/signin_screen.dart';
import 'package:massageme_proje/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBRdGt0z5LTdBj2F0gaOZlUeumoarMNjnM",
        authDomain: "massagemeproje.firebaseapp.com",
        projectId: "massagemeproje",
        storageBucket: "massagemeproje.firebasestorage.app",
        messagingSenderId: "239192191327",
        appId: "1:239192191327:web:3060a6ad08b0f7fc8e86ea"),
  ); 

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mesaj Uygulamasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      initialRoute: _auth.currentUser != null ? ChatScreen.screenRoute : WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => const WelcomeScreen(),
        SigninScreen.screenRoute: (context) => const SigninScreen(),
        RegistrationScreen.screenRoute: (context) => const RegistrationScreen(),
        ChatScreen.screenRoute: (context) => const ChatScreen(),
      },
    );
  }
}
