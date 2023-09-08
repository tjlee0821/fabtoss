import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
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
        getMyStock(context),
      ],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            height20,
            '계좌'.text.make(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
            height20,
            Line(color: context.appColors.lessImportant),
            const LongButton(title: '주문내역'),
            const LongButton(title: '판매수익')
          ],
        ),
      );
  Widget getMyStock(BuildContext context) => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                '관심주식'.text.bold.make(),
                emptyExpanded,
                '편집하기'.text.color(context.appColors.lessImportant).make()
              ],
            ),
            height20,
            Tap(
              onTap: () {
                context.showSnackbar('기본');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  '기본'.text.make(),
                  const Arrow(direction: AxisDirection.up),
                ],
              ),
            ),
          ],
        ),
      );
}
