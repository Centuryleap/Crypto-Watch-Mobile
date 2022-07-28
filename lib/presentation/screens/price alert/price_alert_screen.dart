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
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: priceAlert.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => showModalBottomSheet(
                      enableDrag: true,
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24.r),
                        ),
                      ),
                      context: context,
                      builder: (context) => buildSheet(),
                    ),
                    child: PriceAlertContainer(
                      priceContainerDetails: PriceAlertContainerModel(
                        name: priceAlert[index].priceContainerDetails.name,
                        symbol: priceAlert[index].priceContainerDetails.symbol,
                        imageUrl:
                            priceAlert[index].priceContainerDetails.imageUrl,
                        upwardTrend:
                            priceAlert[index].priceContainerDetails.upwardTrend,
                        downwardTrend: priceAlert[index]
                            .priceContainerDetails
                            .downwardTrend,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 8.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSheet() => Wrap(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 24.w,
              right: 24.h,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffFAFAFA),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 48.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: const Color(0xffDBDCDF),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Set price alert ',
                  style: Header2.copyWith(
                    color: Text1,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Get notified when the coin\nprice gets to your set price',
                  textAlign: TextAlign.center,
                  style: BodyText1.copyWith(
                    color: Text3,
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/bitcoin.png'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bitcoin',
                            style: BodyText0.copyWith(
                              color: const Color(0xff1F2436),
                            ),
                          ),
                          Text(
                            'BTC',
                            style: BodyText2.copyWith(
                              color: Text3,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'BTC/USD',
                              style: BodyText2.copyWith(color: Text3),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              '\$20,000.67',
                              style: BodyText0.copyWith(
                                color: Text1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 46.h,
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: 26.h,
                    left: 18.w,
                    right: 18.w,
                    top: 26.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(
                      12.r,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/arrow_up.png'),
                      Text(
                        'High',
                        style: BodyText1.copyWith(
                          color: const Color(0xff008000),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Text(
                        '\$20,000.67',
                        style: BodyText1.copyWith(
                          color: const Color(0xff1F2436),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: 26.h,
                    left: 18.w,
                    right: 18.w,
                    top: 26.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(
                      12.r,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/arrow_down.png'),
                      Text(
                        ' Low',
                        style: BodyText1.copyWith(
                          color: const Color(0xffE24949),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Text(
                        '\$20,000.67',
                        style: BodyText1.copyWith(
                          color: const Color(0xff1F2436),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 46.h,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      16.r,
                    ),
                  ),
                  color: Primary2,
                  onPressed: () async {
                    Navigator.of(context).pop();
                    await Future.delayed(
                      const Duration(milliseconds: 200),
                    );
                    _showDialog();
                  },
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                  ),
                  minWidth: double.infinity,
                  child: Text(
                    ' Save',
                    style: BodyText1.copyWith(
                      color: Background1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ],
      );

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        elevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.close,
                  color: Color(0xff0B0B0B),
                ),
              ),
            ),
            CircleAvatar(
              radius: 55.r,
              backgroundColor: const Color(0xffFAFAFA),
              child: Image.asset('assets/images/man_illustration.png'),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Welldone!!',
              style: Header2.copyWith(
                color: Text1,
              ),
            ),
            Text(
              'You have successfully set\nyour price alert',
              textAlign: TextAlign.center,
              style: BodyText2.copyWith(
                color: Text3,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16.r,
                ),
              ),
              color: Primary2,
              onPressed: () => Navigator.of(context).pop(),
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
                horizontal: 60.w,
              ),
              child: Text(
                ' Done',
                style: BodyText1.copyWith(
                  color: Background1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
