import 'package:bank_dashboard/constants/widget_constants.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:flutter/material.dart';

class TransactionsGridView extends StatelessWidget {
  const TransactionsGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoTransactions.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => demoTransactions[index],
    );
  }
}
