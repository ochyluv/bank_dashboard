import 'package:bank_dashboard/models/transaction/transaction_model.dart';
import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class TransactionsCard extends StatelessWidget {
  const TransactionsCard({Key? key, required this.transaction})
      : super(key: key);

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(
                transaction.image,
              ),
            ),
            color: kWhiteColor,
          ),
        ),
        horizontalSpaceRegular,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              transaction.title,
              style: kSubtitleTextStyle.copyWith(color: kBlackColor),
            ),
            verticalSpaceSmall,
            Text(
              transaction.description,
              style: kTinyRegularTextStyle.copyWith(color: kBlackColor),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              transaction.amount,
              style: kSubtitleTextStyle.copyWith(color: kBlackColor),
            ),
            verticalSpaceSmall,
            Text(
              transaction.date,
              style: kSmallRegularTextStyle.copyWith(color: kBlackColor),
            ),
          ],
        ),
      ],
    );
  }
}
