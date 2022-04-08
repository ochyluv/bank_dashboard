import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class TransactionsCard extends StatelessWidget {
  const TransactionsCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.amount,
      required this.date,
      required this.image})
      : super(key: key);

  final String title;
  final String subTitle;
  final String amount;
  final String date;
  final String image;
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
                image,
              )),
              color: kWhiteColor),
        ),
        horizontalSpaceRegular,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: kSubtitleTextStyle.copyWith(color: kBlackColor),
            ),
            verticalSpaceSmall,
            Text(
              subTitle,
              style: kTinyRegularTextStyle.copyWith(color: kBlackColor),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              amount,
              style: kSubtitleTextStyle.copyWith(color: kBlackColor),
            ),
            verticalSpaceSmall,
            Text(
              date,
              style: kSmallRegularTextStyle.copyWith(color: kBlackColor),
            ),
          ],
        ),
      ],
    );
  }
}
