import 'package:cryptowatch/app/app_routes.dart';
import 'package:cryptowatch/core/provider/crypto_pro.dart';
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
    precacheImage(AssetImage('assets/images/spaceship_man.png'), context);
    return ChangeNotifierProvider(
      create: (BuildContext context) => CryptoProviders(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Argentum-Sans',
          primarySwatch: Colors.blue,
        ),
        onGenerateTitle: (context) => 'Crypto Watch Mobile',
        initialRoute: AppRoutes.splashScreen,
        onGenerateRoute: AppRoutes.routes,
      ),
    );
  }
}
