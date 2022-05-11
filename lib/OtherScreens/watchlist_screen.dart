import 'package:cryptowatch/provider/crypto_pro.dart';
import 'package:cryptowatch/widgets/coin_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double all_coins_height = MediaQuery.of(context).size.height * 0.8;
    final provider = Provider.of<CryptoProviders>(context, listen: false);
    final futureCoins = provider.getFutureCoins;
    final watchlistSymbol = provider.watchlistStrings;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.090,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Watchlist',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: CoinListWidget(
                futureCoins: futureCoins,
                required_height: all_coins_height,
                required_list: watchlistSymbol,
              ),
            )
          ],
        ),
      ),
    );
  }
}
