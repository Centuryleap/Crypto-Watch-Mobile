import 'package:cryptowatch/core/coingeckomodels/cg_list_coins.dart';
import 'package:cryptowatch/core/provider/crypto_pro.dart';
import 'package:cryptowatch/core/repository/repository.dart';
import 'package:cryptowatch/presentation/screens/all_coins_screens.dart';
import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/components/widgets/coin_list_widget.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CryptoProviders>(context, listen: false);
    provider.setFutureCoins = futureCoins;
    final allStringId = provider.allStrings;
    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            widget.repository.updateCoins();
          });
        },
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(
                top: 84,
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Watchlist',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text('View all',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: PrimaryBlue,
                              fontSize: 16))
                    ],
                  ),
                  SizedBox(
                    height: 218,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Coins',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print(repository
                              .coinGeckoList!.cg_dataModel.first.current_price);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AllCoins(widget.repository,
                                  futureCoins, allStringId)));
                        },
                        child: Text('View all',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: PrimaryBlue,
                                fontSize: 16)),
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
    );
  }
}
