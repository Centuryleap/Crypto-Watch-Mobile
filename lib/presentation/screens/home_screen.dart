import 'dart:async';

import 'package:cryptowatch/core/coingeckomodels/cg_list_coins.dart';
import 'package:cryptowatch/core/provider/crypto_pro.dart';
import 'package:cryptowatch/core/repository/repository.dart';
import 'package:cryptowatch/presentation/components/widgets/horizontal_watchlist_widget.dart';
import 'package:cryptowatch/presentation/screens/all_coins_screens.dart';
import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/components/widgets/coin_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final Repository repository;
  const HomeScreen({required this.repository, Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<CoinGeckoList> futureCoins;
  late Repository repository;
  @override
  void initState() {
    // TODO: implement initState
    repository = Repository();
    futureCoins = repository.getCoins();
    super.initState();
  }

  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CryptoProviders>(context, listen: false);
    provider.setFutureCoins = futureCoins;
    final allStringId = provider.allStrings;
   Future.delayed(Duration(seconds: 5), (){ setState(() {
     isLoaded = true;
   });});
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            setState(() {
              widget.repository.updateCoins();
            });
          },
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                  top: 42.h,
                  left: 24.w,
                  right: 24.w,
                ),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cryptowatch',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              color: Primary1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.w),
                            child: Icon(
                              Iconsax.notification,
                              size: 24.sp,
                              color: Primary1,
                            ),
                          )
                        ]),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Watchlist',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              fontFamily: 'Argentum-Sans',
                              color: Text1),
                        ),
                        Text('View all',
                            style: BodyText1.copyWith(color: Primary2))
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                   isLoaded? HorizontalWatchlistWidget(repository: repository) : Container(),
                    SizedBox(
                      height: 52.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Coins',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              fontFamily: 'Argentum-Sans',
                              color: Color(0xff01071D)),
                        ),
                        GestureDetector(
                          onTap: () {
                            print(repository.coinGeckoList!.cg_dataModel.first
                                .current_price);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AllCoins(
                                    widget.repository,
                                    futureCoins,
                                    allStringId)));
                          },
                          child: Text(
                            'View all',
                            style: BodyText1.copyWith(color: Primary2),
                          ),
                        )
                      ],
                    ),
                    CoinListWidget(
                      repository: widget.repository,
                      required_height:
                          MediaQuery.of(context).size.height * 0.4905,
                      required_list: allStringId,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
