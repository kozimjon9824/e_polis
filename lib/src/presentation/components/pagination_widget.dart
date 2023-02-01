import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

class InfiniteScrollingPagination extends StatelessWidget {
  final Function() onPagination;
  final Widget child;
  final bool isLoading;

  const InfiniteScrollingPagination({
    Key? key,
    required this.onPagination,
    required this.child,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (!isLoading &&
            scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent &&
            scrollInfo is UserScrollNotification) {
          // if(scrollInfo.direction == ScrollDirection.reverse)
          onPagination();
          return false;
        }
        return false;
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: child),
          Container(
            color: Colors.white,
            height: isLoading ? 60 : 0,
            child: SizedBox(
              height: 36,
              width: 36,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
