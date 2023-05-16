import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/components/custom_button.dart';
import 'package:e_polis/src/presentation/components/loading.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/user_product_details/user_product_details_cubit.dart';
import 'package:e_polis/src/presentation/views/my_polis_details/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../generated/l10n.dart';
import '../../../data/models/my_products/product_data.dart';

class PolisDetailsPage extends StatefulWidget {
  const PolisDetailsPage({Key? key}) : super(key: key);

  @override
  State<PolisDetailsPage> createState() => _PolisDetailsPageState();
}

class _PolisDetailsPageState extends State<PolisDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    final local = AppLocalizations.of(context);
    return BlocProvider(
      create: (context) =>
          inject<UserProductDetailsCubit>()..loadData(arguments.id ?? ''),
      child: BlocConsumer<UserProductDetailsCubit, UserProductDetailsState>(
        listener: (context, state) {
          if (state.status == StateStatus.error) {
            showErrorMessage(
                context, state.failure.getLocalizedMessage(context));
          }
        },
        builder: (context, state) {
          if (state.status == StateStatus.loading) {
            return const LoadingWidget();
          }
          return Scaffold(
            appBar: AppBar(
              title: Text(arguments.name ?? ''),
              actions: [
                TextButton(
                  onPressed: () {
                    if ((state.userProduct?.downloadUrl ?? '') == '') {
                      return;
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (_) => PDFViewerFromUrl(
                          url: state.userProduct?.downloadUrl ?? '',
                        ),
                      ),
                    );
                  },
                  child: Text(local.expend),
                )
              ],
            ),
            body: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.grey50,
                  ),
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.userProduct?.details?.length ?? 0,
                        itemBuilder: (_, index) {
                          var data = state.userProduct?.details?[index];
                          if (data?.type == 'IMAGE_URL') {
                            return TitleImageWidget(
                              title: data?.key ?? '',
                              value: data?.value ?? '',
                            );
                          }
                          if (data?.type == 'DIVIDER') {
                            return const Divider(
                                height: 24, color: AppColors.grey100);
                          }
                          return RowTitleWidget(
                            title: data?.key ?? '',
                            value: data?.value ?? '',
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: SafeArea(
              minimum: const EdgeInsets.fromLTRB(20, 4, 20, 16),
              child: Row(
                children: [
                  // Expanded(
                  //   child: CustomOutlineButton(
                  //     text: local.delete,
                  //     onTap: () {},
                  //     primaryColor: AppColors.red,
                  //   ),
                  // ),
                  // const SizedBox(width: 20),
                  Expanded(
                    child: CustomOutlineButton(
                      text: state.filePath != null
                          ? local.expend
                          : local.download,
                      isLoading: state.fileDownloading,
                      onTap: () async {
                        if (state.filePath == null) {
                          context.read<UserProductDetailsCubit>().downloadFile(
                              url: state.userProduct?.downloadUrl ?? '');
                        } else {
                          OpenFile.open(state.filePath!);
                        }
                      },
                    ),
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

class PDFViewerFromUrl extends StatelessWidget {
  const PDFViewerFromUrl({Key? key, required this.url}) : super(key: key);

  final String url;

  Future<void> launchUrlStart({required String url}) async {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF'),
        // actions: [
        //   IconButton(
        //     onPressed: () async {
        //       launchUrlStart(url: url);
        //     },
        //     icon: const Icon(Icons.download),
        //   )
        // ],
      ),
      body: const PDF().fromUrl(
        url,
        placeholder: (double progress) => const Center(
            child: CupertinoActivityIndicator(color: AppColors.primaryColor)),
        errorWidget: (dynamic error) => Center(child: Text(error.toString())),
      ),
    );
  }
}
