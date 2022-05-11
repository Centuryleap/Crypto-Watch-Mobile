import 'package:cryptowatch/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class CoinVolumeCard extends StatelessWidget {
  final String position;
  final num pos_24h;
  const CoinVolumeCard(
      {Key? key, required this.position, required this.pos_24h})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: TextStyle(
                fontSize: 14, color: Black6, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '\$${pos_24h}',
                style: TextStyle(
                  color: Black3,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Container(
                height: 16,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xffEBFBED)),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_drop_up_rounded,
                        color: position == 'High'
                            ? Color(0xff00D578)
                            : Color(0xffF55858),
                        size: 20,
                      ),
                      Text(
                        '0.89%',
                        style: TextStyle(
                            color: position == 'High'
                                ? Color(0xff00D578)
                                : Color(0xffF55858),
                            fontSize: 10),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
          SizedBox(
            width: 120,
            child: FAProgressBar(
              currentValue: 80,
              animatedDuration: Duration(seconds: 3),
              size: 6,
              backgroundColor: Color(0xffC4C4C4),
              progressColor:
                  position == 'High' ? Color(0xff00D578) : Color(0xffF55858),
            ),
          )
        ],
      ),
    );
  }
}
