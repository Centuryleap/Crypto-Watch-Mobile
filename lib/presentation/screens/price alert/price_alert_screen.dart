import 'package:cryptowatch/core/models/price_container_model.dart';
import 'package:cryptowatch/presentation/components/widgets/price_alert_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_constants.dart';

class PriceAlertScreen extends StatefulWidget {
  const PriceAlertScreen({Key? key}) : super(key: key);

  @override
  State<PriceAlertScreen> createState() => _PriceAlertScreenState();
}

class _PriceAlertScreenState extends State<PriceAlertScreen> {
  final List<PriceAlertContainer> priceAlert = [
    PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
    PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
    PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
    PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
    PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
    PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
    PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
    PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
     PriceAlertContainer(
      priceContainerDetails: PriceAlertContainerModel(
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/images/bitcoin.png',
        upwardTrend: 56285.89,
        downwardTrend: 56285.89,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 72.h,
        left: 24.h,
              right: 24.h,

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price alert',
              style: Header2.copyWith(
                color: Text1,
              ),
            ),
            SizedBox(height: 2.h,),
            Expanded(
              child: ListView.separated(
                  
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: priceAlert.length,
                  itemBuilder: (BuildContext context, int index) {
                    return PriceAlertContainer(
                      priceContainerDetails: PriceAlertContainerModel(
                        name: priceAlert[index].priceContainerDetails.name,
                        symbol: priceAlert[index].priceContainerDetails.symbol,
                        imageUrl:
                            priceAlert[index].priceContainerDetails.imageUrl,
                        upwardTrend:
                            priceAlert[index].priceContainerDetails.upwardTrend,
                        downwardTrend:
                            priceAlert[index].priceContainerDetails.downwardTrend,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 8.h,
                      ),),
            ),
          ],
        ),
      ),
    );
  }
}
