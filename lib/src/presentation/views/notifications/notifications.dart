import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/components/error_view.dart';
import 'package:e_polis/src/presentation/components/loading.dart';
import 'package:e_polis/src/presentation/cubits/notifications/notifications_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injector.dart';
import '../../components/pagination_widget.dart';
import 'widgets/single_item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<NotificationsCubit>()..loadNotification(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Уведомления')),
        body: BlocBuilder<NotificationsCubit, NotificationsState>(
          builder: (context, state) {
            if (state.status == StateStatus.loading) {
              return const LoadingWidget();
            }
            if (state.status == StateStatus.error) {
              return ErrorView(onTap: () {
                context.read<NotificationsCubit>().loadNotification();
              });
            }
            if (state.notifications.isEmpty) {
              return const Center(
                  child: Text('Нет уведомления',
                      style: AppTextStyles.styleW500S16Black));
            }
            return SafeArea(
              child: InfiniteScrollingPagination(
                onPagination: () {
                  context.read<NotificationsCubit>().loadNotificationInfinite();
                },
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    itemBuilder: (_, index) => NotificationItem(
                        notification: state.notifications[index]),
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemCount: state.notifications.length),
              ),
            );
          },
        ),
      ),
    );
  }
}
