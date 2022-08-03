import 'package:cryptowatch/core/provider/crypto_pro.dart';
import 'package:cryptowatch/core/repository/repository.dart';
import 'package:cryptowatch/presentation/components/widgets/coin_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WatchlistScreen extends StatelessWidget {
  final Repository repository;
  const WatchlistScreen({required this.repository, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double all_coins_height = MediaQuery.of(context).size.height * 0.8;
    final provider = Provider.of<CryptoProviders>(context, listen: false);
   
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
                repository: repository,
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
