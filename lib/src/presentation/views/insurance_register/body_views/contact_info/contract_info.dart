import 'package:e_polis/injector.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../components/custom_button.dart';
import '../../../insurance_basic_filter/widget/three_button.dart';
import 'widgets/contract_detail.dart';

class ContactInfoView extends StatelessWidget {
  const ContactInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<BookCubit>(),
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          children: const [
            ThreeButton(),
            SizedBox(height: 20),
            ContractDetails()
          ],
        ),
        bottomNavigationBar: SafeArea(
          minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
          child: CustomButton(
            text: 'Продолжить',
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
