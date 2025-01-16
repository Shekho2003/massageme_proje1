import 'package:flutter/material.dart';
import 'package:massageme_proje/screens/registration_screen.dart';
import 'package:massageme_proje/screens/signin_screen.dart';
import 'package:massageme_proje/widgets/my_button.dart';



class WelcomeScreen extends StatefulWidget {
  static const String screenRoute='welcome_screen'; //static yardimiyle sadece property olan screenRoute çararak , class'a oluşturmak yerine 

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          SizedBox(
            height: 180,
            child: Image.asset('images/logo.png'),
            
          ),
          const Text('MessageMe',
          style: TextStyle(fontSize:40,
           fontWeight:FontWeight.w900,
          color: Color(0xff2e386b),
         
          ), 
           ),
        
          const SizedBox(height: 30),
          MyButton(
            color: Colors.yellow[900]!,
            title: 'Giriş',
            onPressed: (){
              Navigator.pushNamed(context, SigninScreen.screenRoute);
            },
          ),
          MyButton(
            color: Colors.blue[800]!,
           title: 'Kayit Olmak',
            onPressed: (){
              Navigator.pushNamed(context, RegistrationScreen.screenRoute);
            },
            )
        ],
        ),
      ),
    );
  }
}

