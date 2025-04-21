import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MainSummaryShimmer extends StatelessWidget {
  const MainSummaryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      key: UniqueKey(),
      baseColor: AppColors.simmerBg,
      highlightColor: AppColors.simmerFg,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 105,
          minWidth: 100,
          maxWidth:
              (MediaQuery.sizeOf(context).width / 2) -
              (AppDimen.pagePadding + 5),
        ),
        margin: EdgeInsets.symmetric(vertical: 12),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
      ),
    );
  }
}
