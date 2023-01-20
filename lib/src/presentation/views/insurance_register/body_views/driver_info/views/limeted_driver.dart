import 'package:flutter/material.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../components/custom_button.dart';
import '../widgets/widgets.dart';
import 'tab_body/limeted_driver_tab_body.dart';

class LimitedDriverView extends StatefulWidget {
  const LimitedDriverView({Key? key}) : super(key: key);

  @override
  State<LimitedDriverView> createState() => _LimitedDriverViewState();
}

class _LimitedDriverViewState extends State<LimitedDriverView> {
  List tabList = [1];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverPadding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Row(children: [
                    for (int i = 1; i <= tabList.length; i++)
                      TextBtn(
                          title: i.toString(),
                          onTap: () {
                            currentIndex = i - 1;
                            setState(() {});
                          },
                          bgColor: AppColors.green300,
                          borderRadius: (i == 1)
                              ? const BorderRadius.horizontal(
                                  left: Radius.circular(8))
                              : (i == 5)
                                  ? const BorderRadius.horizontal(
                                      right: Radius.circular(8))
                                  : null),
                    Visibility(
                      visible: tabList.length != 5,
                      child: IconBtn(onTap: () {
                        tabList.add(tabList.length + 1);
                        setState(() {});
                      }),
                    )
                  ]),
                ]),
              ),
            ),
          ];
        },
        body: IndexedStack(
          index: currentIndex,
          children: [
            for (int i = 1; i <= tabList.length; i++)
              DriverInputDetailsBody(index: i)
          ],
        ),
      ),
    );
  }
}
