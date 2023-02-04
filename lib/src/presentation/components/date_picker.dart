import 'package:e_polis/src/presentation/components/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';

void selectDate(
    {required BuildContext context,
    required Function(DateTime dateTime) onSave}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(12), topLeft: Radius.circular(12))),
    builder: (_) {
      return DateBottomSheetBody(
        onSave: onSave,
      );
    },
  );
}

class DateBottomSheetBody extends StatefulWidget {
  const DateBottomSheetBody(
      {Key? key,
      required this.onSave,
      this.minimumYear,
      this.maximumYear,
      this.use24hFormat = false,
      this.initialDate})
      : super(key: key);
  final Function(DateTime dateTime) onSave;
  final int? minimumYear;
  final int? maximumYear;
  final DateTime? initialDate;
  final bool use24hFormat;

  @override
  State<DateBottomSheetBody> createState() => _DateBottomSheetBodyState();
}

class _DateBottomSheetBodyState extends State<DateBottomSheetBody> {
  DateTime _selectedDate = DateTime.now().add(const Duration(minutes: 30));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), topLeft: Radius.circular(12))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(children: [
            Text(AppLocalizations.of(context).selectDate,
                style: AppTextStyles.styleW500S16Black),
            const Spacer(),
            InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, size: 20))
          ]),
          const SizedBox(height: 16),
          const Divider(height: 0),
          const SizedBox(height: 20),
          SizedBox(
            height: 220,
            child: CupertinoTheme(
              data: const CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle:
                          AppTextStyles.styleW500S16Black)),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: widget.initialDate ??
                    DateTime.now().add(const Duration(minutes: 20)),
                use24hFormat: widget.use24hFormat,
                minimumYear: widget.minimumYear ?? DateTime.now().year - 100,
                dateOrder: DatePickerDateOrder.dmy,
                maximumYear: widget.maximumYear ?? DateTime.now().year + 100,
                onDateTimeChanged: (v) {
                  _selectedDate = v;
                },
              ),
            ),
          ),
          const SizedBox(height: 28),
          CustomButton(
            bgColor: AppColors.primaryColor,
            text: AppLocalizations.of(context).select,
            onTap: () {
              Navigator.pop(context);
              widget.onSave(_selectedDate);
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
