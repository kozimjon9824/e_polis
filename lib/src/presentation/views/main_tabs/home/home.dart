import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/loading.dart';
import '../../../cubits/filter_tab/filter_tab_manager_cubit.dart';
import 'widgets/body.dart';
import 'widgets/carausel_widget.dart';
import 'widgets/filter_tabs.dart';
import 'widgets/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<FilterTabManagerCubit>()..changeTab('Все'),
      child: BlocConsumer<MainScreenDataCubit, MainScreenDataState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const LoadingWidget(),
            loading: () => const LoadingWidget(),
            initial: () => const LoadingWidget(),
            loaded: (data) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                titleSpacing: 0.0,
                title: ProfileWidget(
                  image: data?.user?.phone,
                  fullName: data?.user?.fullName,
                  phone: data?.user?.phone,
                  hasUser: data?.user != null,
                ),
                actions: [
                  SvgPicture.asset((data?.hasNotification == true)
                      ? AppIcons.activeBell
                      : AppIcons.bell),
                  const SizedBox(width: 20)
                ],
              ),
              body: BlocBuilder<FilterTabManagerCubit, FilterTabManagerState>(
                builder: (context, state) {
                  return ListView(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    children: [
                      CarouselPromoWidget(banners: data?.banners ?? []),
                      const SizedBox(height: 24),
                      FilterTabs(
                        tabs: [
                          'Все',
                          ...?data?.products
                              ?.map((e) => e.category?.name ?? '')
                              .toSet()
                              .toList()
                        ],
                        selectedTab: state.tab,
                        onTap: (String value) {
                          context
                              .read<FilterTabManagerCubit>()
                              .changeTab(value);
                        },
                      ),
                      const SizedBox(height: 16),
                      InsuranceTypesBody(
                          products: (state.tab == 'Все')
                              ? (data?.products ?? [])
                              : data?.products
                                      ?.where((element) =>
                                          element.category?.name == state.tab)
                                      .toList() ??
                                  [])
                    ],
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
