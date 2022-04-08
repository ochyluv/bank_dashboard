import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:bank_dashboard/ui/widgets/transactions_row.dart';
import 'package:bank_dashboard/views/main/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:stacked/stacked.dart';

class AllExpensesCard extends ViewModelWidget<MainViewModel> {
  const AllExpensesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, viewModel) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      padding: kEdgeInsetsHorizontalTiny,
      height: height * 0.60,
      decoration: BoxDecoration(
        border: Border.all(color: kSecondaryColor5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          verticalSpaceMedium,
          const TransactionRow(
            title: 'All Expenses',
            cardText: 'Monthly',
          ),
          verticalSpaceMedium,
          CircularPercentIndicator(
            radius: 100,
            lineWidth: 30,
            backgroundColor: kBlackColor,
            progressColor: kTertiaryColor5,
            percent: 0.3,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '60.8%',
                  style: kHeading3TextStyle,
                ),
                Text(
                  'Total transactions',
                  style: kSmallRegularTextStyle,
                ),
              ],
            ),
          ),
          verticalSpaceMedium,
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CheckboxListTile(
                    visualDensity: VisualDensity.comfortable,
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: kBlackColor,
                    side: const BorderSide(color: kTertiaryColor4),
                    checkColor: kBlackColor,
                    title: Text(
                      'Received',
                      style:
                          kSmallRegularTextStyle.copyWith(color: kBlackColor),
                    ),
                    value: viewModel.receivedCheckValue,
                    onChanged: viewModel.onReceivedCheckChanged,
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: kBlackColor,
                    side: const BorderSide(color: kTertiaryColor4),
                    checkColor: kBlackColor,
                    title: Text(
                      'Send',
                      style:
                          kSmallRegularTextStyle.copyWith(color: kBlackColor),
                    ),
                    value: viewModel.sendCheckValue,
                    onChanged: viewModel.onSendCheckChanged,
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceMedium,
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Daily',
                    style: kSmallRegularTextStyle.copyWith(color: kBlackColor),
                  ),
                  verticalSpaceTiny,
                  Text(
                    '\$289,000',
                    style: kBodyTextStyle.copyWith(color: kBlackColor),
                  ),
                ]),
                verticalSpaceSmall,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weekly',
                      style:
                          kSmallRegularTextStyle.copyWith(color: kBlackColor),
                    ),
                    verticalSpaceTiny,
                    Text(
                      '\$120,000',
                      style: kBodyTextStyle.copyWith(color: kBlackColor),
                    ),
                  ],
                ),
                verticalSpaceSmall,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monthly',
                      style:
                          kSmallRegularTextStyle.copyWith(color: kBlackColor),
                    ),
                    verticalSpaceTiny,
                    Text(
                      '\$438,000',
                      style: kBodyTextStyle.copyWith(color: kBlackColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
