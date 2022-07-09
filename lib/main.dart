import 'package:cryptowatch/app/app_routes.dart';
import 'package:cryptowatch/core/coingeckomodels/cg_data_model.dart';
import 'package:cryptowatch/core/coingeckomodels/cg_list_coins.dart';
import 'package:cryptowatch/core/provider/crypto_pro.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()  async {
  await Hive.initFlutter();
  Hive.registerAdapter(CoinGeckoListAdapter());
  Hive.registerAdapter(CoinGeckoDataModelAdapter());
  await ScreenUtil.ensureScreenSize();
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
      child: ScreenUtilInit(
        designSize: const Size(390, 900),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Argentum-Sans',
              primarySwatch: Colors.blue,
            ),
            onGenerateTitle: (context) => 'Crypto Watch Mobile',
            initialRoute: AppRoutes.splashScreen,
            onGenerateRoute: AppRoutes.routes,
          );
        },
      ),
    );
  }
}
