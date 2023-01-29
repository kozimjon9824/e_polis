import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/presentation/cubits/auth/auth_cubit.dart';
import 'package:e_polis/src/presentation/views/main_tabs/my_polis/tab_views/archived_insurance.dart';
import 'package:e_polis/src/presentation/views/main_tabs/my_polis/tab_views/progress_insurance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../injector.dart';
import '../../../components/custom_button.dart';
import '../../../cubits/my_archived_product/archived_products_cubit.dart';
import '../../../cubits/my_current_products/current_products_cubit.dart';
import '../../../cubits/my_product_tab_controller/product_tab_manager_cubit.dart';
import '../../../cubits/my_progress_products/progress_products_cubit.dart';
import 'tab_views/current_insurance.dart';
import 'widgets/tab_bar.dart';
import 'widgets/unauth_polis.dart';

class MyPolis extends StatefulWidget {
  const MyPolis({Key? key}) : super(key: key);

  @override
  State<MyPolis> createState() => _MyPolisState();
}

class _MyPolisState extends State<MyPolis> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    if ((context.read<AuthCubit>().state is AuthenticatedState)) {
      context.read<CurrentProductsCubit>().loadData();
      context.read<ProgressProductsCubit>().loadData();
      context.read<ArchivedProductsCubit>().loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<ProductTabManagerCubit>(),
      child: BlocBuilder<ProductTabManagerCubit, ProductTabManagerState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text('Мои полисы'),
              bottom: TabBarWidget(
                tabController: _tabController,
                tabs: tabs,
                onTap: (index) {
                  context.read<ProductTabManagerCubit>().changeTab(index);
                },
              ),
            ),
            body: (context.read<AuthCubit>().state is UnAuthenticatedState)
                ? const UnAuthPolis()
                : TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      CurrentInsuranceView(),
                      ProgressInsuranceView(),
                      ArchivedInsuranceView()
                    ],
                  ),
            bottomNavigationBar:
                (context.read<AuthCubit>().state is UnAuthenticatedState)
                    ? null
                    : bottomButtons(),
          );
        },
      ),
    );
  }

  List tabs = ['Действующие', 'В оформлении', 'Архиные'];

  Widget bottomButtons() {
    return SafeArea(
      minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomOutlineButton(
            text: 'Добавить полис',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.addPolis);
            },
          ),
          const SizedBox(height: 16),
          CustomButton(
            text: 'Купить полис',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
