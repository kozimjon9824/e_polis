import 'package:e_polis/injector.dart';
import 'package:e_polis/src/presentation/cubits/limited_driver_tabbar/limited_driver_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../widgets/widgets.dart';
import 'tab_body/limeted_driver_tab_body.dart';

class LimitedDriverView extends StatelessWidget {
  const LimitedDriverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<LimitedDriverTabBarCubit>(),
      child: BlocBuilder<LimitedDriverTabBarCubit, LimitedDriverTabBarState>(
        builder: (context, state) {
          var cubit = context.read<LimitedDriverTabBarCubit>();
          return Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool _) {
                return [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        Row(
                          children: [
                            for (int i = 1; i <= state.drivers.length; i++)
                              TextBtn(
                                title: i.toString(),
                                onTap: () {
                                  cubit.changeTab(i - 1);
                                },
                                bgColor: (i - 1 == state.currentIndex &&
                                        state.drivers[i - 1].isSuccess != true)
                                    ? AppColors.green300
                                    : (state.drivers[i - 1].isSuccess == true)
                                        ? AppColors.green
                                        : null,
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(i == 1 ? 8 : 0),
                                  right: Radius.circular(i == 5 ? 8 : 0),
                                ),
                              ),
                            Visibility(
                              visible: state.drivers.length != 5,
                              child: IconBtn(onTap: () => cubit.addTab()),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
                ];
              },
              body: IndexedStack(
                index: state.currentIndex,
                children: [
                  for (int i = 1; i <= state.drivers.length; i++)
                    DriverInputDetailsBody(
                      index: i,
                      tabLength: state.drivers.length,
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
