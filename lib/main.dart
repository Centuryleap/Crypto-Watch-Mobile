import 'package:cryptowatch/SignupProcess/splash_screen.dart';
import 'package:cryptowatch/models/user_model.dart';
import 'package:cryptowatch/provider/auth.dart';
import 'package:cryptowatch/provider/crypto_pro.dart';
import 'package:cryptowatch/util/sharedpreferences.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     Future<User> getUserData() => UserPreferences().getUser();
    precacheImage(AssetImage('assets/images/spaceship_man.png'), context);
    return MultiProvider(
       providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => CryptoProviders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Argentum-Sans',
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
