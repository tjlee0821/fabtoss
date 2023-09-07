import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

class TodayDiscoveryFragment extends StatelessWidget {
  const TodayDiscoveryFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        height20,
        myStock,
      ],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            height20,
            '계좌'.text.make(),
            Row(
              children: [
                '443원'.text.size(24).bold.make(),
                Arrow(),
                emptyExpanded,
                RoundedContainer(
                  child: '채우기'.text.size(12).make(),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  radius: 8,
                  backgroundColor: context.appColors.buttonBackground,
                )
              ],
            ),
          ],
        ),
      );
  Widget get myStock => Placeholder();
}
