import 'package:cached_network_image/cached_network_image.dart';
import 'package:cryptowatch/OtherScreens/all_coins_screens.dart';
import 'package:cryptowatch/OtherScreens/coin_detail_screen.dart';
import 'package:cryptowatch/coingeckomodels/cg_list_coins.dart';
import 'package:cryptowatch/models/big_data_models.dart';
import 'package:cryptowatch/provider/crypto_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CoinListWidget extends StatelessWidget {
  final Future<CoinGeckoList> futureCoins;
  final double required_height;
  final List<String> required_list;

  const CoinListWidget(
      {Key? key,
      required this.futureCoins,
      required this.required_height,
      required this.required_list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CryptoProviders>(context);
    final magic = provider.watchlistStrings;
    final provider2 = Provider.of<CryptoProviders>(context, listen: false);

    var coinIconUrl =
        'https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/';

    return FutureBuilder<CoinGeckoList>(
        future: futureCoins,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final allCoins = snapshot.data!.cg_dataModel;
              provider2.addAllCoinId(allCoins);
              final coins = allCoins
                  .where((element) => required_list.contains(element.id))
                  .toList();
              return ListView.separated(
                  shrinkWrap: true,
                  physics: required_list.length < 9
                      ? NeverScrollableScrollPhysics()
                      : ClampingScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 12,
                    );
                  },
                  itemCount: coins.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          PageTransition(
                            child: CoinDetailScreen(coin: coins[index]),
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(
                              milliseconds: 500,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        width: double.infinity,
                        height: 70,
                        child: Row(
                          children: [
                            CachedNetworkImage(
                                imageUrl:
                                    (coinIconUrl + coins[index].symbol + '.png')
                                        .toLowerCase(),
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    CachedNetworkImage(
                                      imageUrl: coins[index].image,
                                      errorWidget: (context, url, error) =>
                                          SvgPicture.asset(
                                        'assets/images/Dollar_Sign.svg',
                                        color: Colors.blue,
                                      ),
                                    ),
                                height: 40,
                                width: 40),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    coins[index].name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$' + coins[index].current_price.toString(),
                                  style: TextStyle(
                                    color: Color(0xff929292),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                                child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      coins[index]
                                              .price_change_percentage_7d_in_currency
                                              .toStringAsFixed(2) +
                                          '%',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: coins[index]
                                                      .price_change_percentage_7d_in_currency >=
                                                  0
                                              ? Color(0xff4caf50)
                                              : Color(0xffe52f15),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(width: 10),
                                    IconButton(
                                      icon: magic.contains(coins[index].id)
                                          ? Icon(IconlyBold.star)
                                          : Icon(IconlyLight.star),
                                      color: magic.contains(coins[index].id)
                                          ? Color(0xffF7936F)
                                          : Colors.grey,
                                      onPressed: () {
                                        magic.contains(coins[index].id)
                                            ? provider2
                                                .removeCoin(coins[index].id)
                                            : provider2
                                                .addCoin(coins[index].id);
                                      },
                                    )
                                  ],
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Center();
            }
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

// ListTile(
//                           contentPadding: EdgeInsets.only(
//                             left: 0,
//                           ),
//                           leading:
//                           title:
//                           subtitle:
//                           trailing: SizedBox(
//                             width: 100,
//                             child:
//                           ),
//                         ),
