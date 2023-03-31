import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../components/error_view.dart';
import '../../../components/loading.dart';
import '../../../cubits/filter_tab/filter_tab_manager_cubit.dart';
import 'widgets/body.dart';
import 'widgets/carausel_widget.dart';
import 'widgets/filter_tabs.dart';
import 'widgets/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<FilterTabManagerCubit>()
        ..changeTab(AppLocalizations.of(context).all),
      child: BlocBuilder<MainScreenDataCubit, MainScreenDataState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => ErrorView(onTap: () {
              context.read<MainScreenDataCubit>().loadData();
            }),
            error: (failure) => ErrorView(onTap: () {
              context.read<MainScreenDataCubit>().loadData();
            }),
            loading: () => const LoadingWidget(),
            initial: () => const LoadingWidget(),
            loaded: (data) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                titleSpacing: 0.0,
                title: ProfileWidget(
                  image: data?.user?.photo,
                  fullName: data?.user?.fullName,
                  phone: data?.user?.phone,
                  hasUser: data?.user != null,
                ),
                actions: [
                  IconButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutes.notification),
                    icon: SvgPicture.asset(
                      (data?.hasNotification == true)
                          ? AppIcons.activeBell
                          : AppIcons.bell,
                    ),
                  ),
                  const SizedBox(width: 8)
                ],
              ),
              body: BlocBuilder<FilterTabManagerCubit, FilterTabManagerState>(
                builder: (context, state) {
                  var tabCubit = context.read<FilterTabManagerCubit>();
                  return RefreshIndicator(
                    onRefresh: () async {
                      await context.read<MainScreenDataCubit>().loadData(true);
                    },
                    child: ListView(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      children: [
                        CarouselPromoWidget(banners: data?.banners ?? []),
                        const SizedBox(height: 24),
                        FilterTabs(
                          tabs: [
                            AppLocalizations.of(context).all,
                            ...?data?.products
                                ?.map((e) => e.category?.name ?? '')
                                .toSet()
                                .toList()
                          ],
                          selectedTab: state.tab,
                          onTap: (String value) {
                            tabCubit.changeTab(value);
                          },
                        ),
                        const SizedBox(height: 16),
                        InsuranceTypesBody(
                          products: (state.tab ==
                                  AppLocalizations.of(context).all)
                              ? (data?.products ?? [])
                              : data?.products
                                      ?.where((element) =>
                                          element.category?.name == state.tab)
                                      .toList() ??
                                  [],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
