import 'package:e_polis/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../injector.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/utils/helper_models.dart';
import '../../../../../components/custom_button.dart';
import '../../../../../components/snackbars.dart';
import '../../../../../cubits/book/book_cubit.dart';
import '../../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import '../../../../../cubits/limited_driver_tabbar/limited_driver_tab_bar_cubit.dart';
import '../../../../../cubits/limitless_driver_tabbar/limitless_driver_tab_bar_cubit.dart';
import '../widgets/widgets.dart';
import 'tab_body/limitless_driver.dart';

class LimitlessDriverView extends StatelessWidget {
  const LimitlessDriverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LimitlessDriverTabBarCubit, LimitlessDriverTabBarState>(
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
                            (state.drivers.length > 4)
                                ? SizedBox(
                                    height: 46,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (int i = 1;
                                            i <= state.drivers.length;
                                            i++)
                                          TextBtnWithWidth(
                                              title: i.toString(),
                                              onTap: () => cubit.changeTab(
                                                  i - 1),
                                              bgColor: (state.drivers[i - 1]
                                                          .isSuccess ==
                                                      null)
                                                  ? null
                                                  : (state.drivers[i - 1]
                                                              .isSuccess ==
                                                          true)
                                                      ? AppColors.green
                                                      : AppColors.green300,
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                      left:
                                                          Radius.circular(
                                                              i == 1 ? 8 : 0),
                                                      right: Radius.circular(
                                                          i == 10 ? 8 : 0))),
                                        Visibility(
                                          visible: state.drivers.length != 10,
                                          child: IconBtnWithWidth(
                                              onTap: () => cubit.addTab()),
                                        )
                                      ],
                                    ))
                                : Row(children: [
                                    for (int i = 1;
                                        i <= state.drivers.length;
                                        i++)
                                      TextBtn(
                                          title: i.toString(),
                                          onTap: () => cubit.changeTab(i - 1),
                                          bgColor:
                                              (state.drivers[i - 1].isSuccess ==
                                                      null)
                                                  ? null
                                                  : (state.drivers[i - 1]
                                                              .isSuccess ==
                                                          true)
                                                      ? AppColors.green
                                                      : AppColors.green300,
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(
                                                  i == 1 ? 8 : 0),
                                              right: Radius.circular(
                                                  i == 6 ? 8 : 0))),
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
                          text: AppLocalizations.of(context).addDriver,
                          onTap: () => cubit.addTab()),
                      const SizedBox(height: 16),
                      CustomButton(
                        text: AppLocalizations.of(context).next,
                        onTap: () {
                          context.read<BookCubit>().onDriverListData([]);
                          context
                              .read<ManageInsuranceStackViewsCubit>()
                              .changeIndex(2);
                        },
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
