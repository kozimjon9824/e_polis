import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../injector.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../components/custom_button.dart';
import '../../../../../cubits/limitless_driver_tabbar/limitless_driver_tab_bar_cubit.dart';
import '../widgets/widgets.dart';
import 'tab_body/limitless_driver.dart';

class LimitlessDriverView extends StatelessWidget {
  const LimitlessDriverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<LimitlessDriverTabBarCubit>(),
      child:
          BlocBuilder<LimitlessDriverTabBarCubit, LimitlessDriverTabBarState>(
        builder: (context, state) {
          var cubit = context.read<LimitlessDriverTabBarCubit>();
          return Scaffold(
            body: (state.drivers.isEmpty)
                ? const SizedBox.shrink()
                : NestedScrollView(
                    headerSliverBuilder: (BuildContext context, bool _) {
                      return [
                        SliverPadding(
                          padding: const EdgeInsets.all(16),
                          sliver: SliverList(
                            delegate: SliverChildListDelegate([
                              Row(children: [
                                for (int i = 1; i <= state.drivers.length; i++)
                                  TextBtn(
                                      title: i.toString(),
                                      onTap: () => cubit.changeTab(i - 1),
                                      bgColor: (state
                                                  .drivers[i - 1].isSuccess ==
                                              null)
                                          ? null
                                          : (state.drivers[i - 1].isSuccess ==
                                                  true)
                                              ? AppColors.green
                                              : AppColors.green300,
                                      borderRadius: (i == 1)
                                          ? const BorderRadius.horizontal(
                                              left: Radius.circular(8))
                                          : null),
                                IconBtn(onTap: () => cubit.addTab())
                              ]),
                            ]),
                          ),
                        ),
                      ];
                    },
                    body: IndexedStack(
                      index: state.currentIndex,
                      children: [
                        for (int i = 1; i <= state.drivers.length; i++)
                          LimitlessDriverInputs(index: i)
                      ],
                    ),
                  ),
            bottomNavigationBar: (state.drivers.isNotEmpty)
                ? null
                : SafeArea(
                    minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomOutlineButton(
                            text: 'Добавить водителя',
                            onTap: () {
                              context
                                  .read<LimitlessDriverTabBarCubit>()
                                  .addTab();
                            }),
                        const SizedBox(height: 16),
                        CustomButton(
                          text: 'Продолжить',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
