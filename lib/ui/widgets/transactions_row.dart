import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class TransactionRow extends StatelessWidget {
  const TransactionRow({Key? key, required this.title, required this.cardText})
      : super(key: key);

  final String title;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kSubtitleTextStyle.copyWith(color: kBlackColor),
        ),
        Container(
          padding: kEdgeInsetsHorizontalTiny,
          height: 30,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: kTertiaryColor5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                cardText,
                style: kTinyBoldTextStyle.copyWith(color: kBlackColor),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: kBlackColor,
                size: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
