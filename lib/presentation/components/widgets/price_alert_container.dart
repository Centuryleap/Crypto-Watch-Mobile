import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app/app_constants.dart';
import '../../../core/models/price_container_model.dart';

class PriceAlertContainer extends StatefulWidget {
  final PriceAlertContainerModel priceContainerDetails;

  const PriceAlertContainer({required this.priceContainerDetails, Key? key})
      : super(key: key);

  @override
  State<PriceAlertContainer> createState() => _PriceAlertContainerState();
}

class _PriceAlertContainerState extends State<PriceAlertContainer> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: Background1,
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Row(
        children: [
          Image.asset(widget.priceContainerDetails.imageUrl),
          SizedBox(
            width: 10.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.priceContainerDetails.name,
                style: BodyText1.copyWith(
                  color: const Color(0xff1F2436),
                ),
              ),
              Text(
                widget.priceContainerDetails.symbol,
                style: BodyText3.copyWith(
                  color: const Color(0xff888C99),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/arrow_up.png'),
                  Text(
                    '\$' + widget.priceContainerDetails.upwardTrend.toString(),
                    style: BodyText3.copyWith(
                      color: const Color(0xff1F2436),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Image.asset('assets/images/arrow_down.png'),
                  Text(
                    '\$' +
                        widget.priceContainerDetails.downwardTrend.toString(),
                    style: BodyText3.copyWith(
                      color: const Color(0xff1F2436),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 20.w,
          ),
          Switch(
              value: _isSwitched,
              activeColor: const Color(0xffFFFFFF),
              activeTrackColor: const Color(0xff0039E5),
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              }),
        ],
      ),
    );
  }
}
