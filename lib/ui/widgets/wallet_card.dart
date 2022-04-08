import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.amount,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kEdgeInsetsAllNormal,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kTertiaryColor5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: kBlackColor),
            child: Icon(icon),
          ),
          Text(
            text,
            style: kBodyTextStyle.copyWith(color: kBlackColor),
          ),
          Text(
            'save in dollars, you\'ve up to 8% pa in dollars',
            style: kSmallRegularTextStyle.copyWith(color: kBlackColor),
          ),
          Text(
            amount,
            style: kBodyTextStyle,
          ),
        ],
      ),
    );
  }
}
