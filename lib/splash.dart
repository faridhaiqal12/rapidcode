//SPLASH SCREEN//

// import 'package:desain2jam/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rapidcode2/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
    });
  }

  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromRGBO(251, 3, 48, 30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PajoehPue",
              style: TextStyle(
                  fontFamily: 'romerto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 50),
            ),
            Text(
              "Take your food, your drink and your mood",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'poppins', fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
