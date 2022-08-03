import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/core/provider/crypto_pro.dart';
import 'package:cryptowatch/core/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HorizontalWatchlistWidget extends StatelessWidget {
  final Repository repository;
  const HorizontalWatchlistWidget({required this.repository, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CryptoProviders>(context, listen: false);
    final watchlistSymbol = provider.watchlistStrings;
    final allCoins = repository.coinGeckoList!.cg_dataModel;
    final coins = allCoins
        .where((element) => watchlistSymbol.contains(element.id))
        .toList();
    var coinIconUrl =
        'https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/';

    return Container(
      height: 180,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        itemCount: coins.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
            height: 150.h,
            width: 164.w,
            margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.only(left: 16,right:16.w, bottom: 16.h, top: 30.h),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CachedNetworkImage(
                        imageUrl: (coinIconUrl + coins[index].symbol + '.png')
                            .toLowerCase(),
                        errorWidget: (context, url, error) =>
                            CachedNetworkImage(
                              imageUrl: coins[index].image,
                              errorWidget: (context, url, error) =>
                                  SvgPicture.asset(
                                'assets/images/Dollar_Sign.svg',
                                color: Colors.blue,
                              ),
                            ),
                        height: 36,
                        width: 36),
                    SizedBox(
                      width: 4.w,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coins[index].name,
                          style: BodyText1.copyWith(color: Background2),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          coins[index].symbol.toUpperCase(),
                          style: BodyText3.copyWith(color: Text4),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 94.w,
                      height: 37.h,
                      child: SvgPicture.network(
                        'https://www.coingecko.com/coins/${RegExp(r'([0-9])+').firstMatch(coins[index].image)?.group(0)}/sparkline.svg',
                        color: coins[index]
                                    .price_change_percentage_7d_in_currency >=
                                0
                            ? Color(0xff008000)
                            : Color(0xffE24949),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${coins[index].symbol.toUpperCase()}/USD',
                      style: BodyText3.copyWith(color: Text4),
                    ),
                    Text(
                      coins[index]
                              .price_change_percentage_7d_in_currency
                              .toStringAsFixed(2) +
                          '%',
                      style: BodyText2.copyWith(
                        fontSize: 10.sp,
                        color: coins[index]
                                    .price_change_percentage_7d_in_currency >=
                                0
                            ? Color(0xff008000)
                            : Color(0xffE24949),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '\$' + coins[index].current_price.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: BodyText1.copyWith(color: Background2),
                ),
              ],
            )),
      ),
    );
  }
}
