import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/edge_insect.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class QuickTransferCard extends StatelessWidget {
  const QuickTransferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.35,
      padding: kEdgeInsetsAllNormal,
      decoration: BoxDecoration(
        border: Border.all(color: kSecondaryColor5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Quick Transfer',
            style: kSubtitleTextStyle.copyWith(color: kBlackColor),
          ),
          verticalSpaceRegular,
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image_2.png'),
                        ),
                        horizontalSpaceTiny,
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image_3.png'),
                        ),
                        horizontalSpaceTiny,
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image_4.png'),
                        ),
                        horizontalSpaceTiny,
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image_1.png'),
                        ),
                        horizontalSpaceTiny,
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image_2.png'),
                        ),
                        horizontalSpaceTiny,
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image_3.png'),
                        ),
                        horizontalSpaceTiny,
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image_1.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                horizontalSpaceTiny,
                GestureDetector(
                  // onTap: () => scrollController.animateTo(
                  //   100,
                  //   duration: const Duration(milliseconds: 300),
                  //   curve: Curves.easeInOut,
                  // ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: kBlackColor,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceSmall,
          Expanded(
            child: TextFormField(
              cursorColor: kPrimaryColor,
              enabled: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      const BorderSide(color: kSecondaryColor3, width: 2),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kSecondaryColor3, width: 2),
                ),
                labelText: 'Enter Card Number',
                labelStyle: kBodyRegularTextStyle.copyWith(color: kBlackColor),
                suffixIcon: const Icon(
                  Icons.cancel_outlined,
                  color: kSecondaryColor4,
                ),
              ),
            ),
          ),
          verticalSpaceSmall,
          GestureDetector(
            onTap: () {},
            child: Container(
              width: width,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kBlackColor,
              ),
              child: Center(
                child: Text(
                  'Make Transfer',
                  style: kBodyRegularTextStyle.copyWith(
                    color: kWhiteColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
