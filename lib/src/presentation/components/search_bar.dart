import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/themes/app_text_styles.dart';

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchBar(
      {Key? key,
      this.onTap,
      this.focus,
      this.onCancel,
      this.onChange,
      this.controller,
      this.onClear,
      this.autoFocus,
      this.hasWord = false,
      this.readOnly})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(68);

  final VoidCallback? onTap;
  final FocusNode? focus;
  final VoidCallback? onCancel;
  final VoidCallback? onClear;
  final Function(String word)? onChange;
  final TextEditingController? controller;
  final bool? autoFocus;
  final bool? readOnly;
  final bool? hasWord;

  OutlineInputBorder inputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.white, width: 0));

  TextStyle cancelTextStyle() => const TextStyle(
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      color: Color(0xFF31AFB4),
      fontSize: 12);

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible =
        KeyboardVisibilityProvider.isKeyboardVisible(context);

    /// Add Hero Animation here with some tag.
    /// Problem with this is that whenever Hero animation starts, keyboard is automatically dismissed.
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                focusNode: focus,
                onTap: onTap,
                textInputAction: TextInputAction.done,
                controller: controller,
                readOnly: readOnly ?? false,
                autofocus: autoFocus ?? false,
                onChanged: onChange,
                style: AppTextStyles.styleW500S14Grey9,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: AppTextStyles.styleW500S14Grey6,
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                  prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(AppIcons.search,
                          height: 19, width: 19)),
                  // suffixIcon: (isKeyboardVisible && (hasWord ?? false))
                  //     ? InkWell(
                  //         onTap: onClear,
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: SvgPicture.asset(
                  //               'assets/icons/ic_search_clear.svg',
                  //               height: 18,
                  //               width: 18),
                  //         ),
                  //       )
                  //     : null,
                  filled: true,
                  fillColor: AppColors.grey50,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide()),
                  errorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: AppColors.red)),
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Color(0xFFF9F9FC))),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: AppColors.primaryColor)),
                  disabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Color(0xFFF9F9FC))),
                ),
              ),
            ),
            if (isKeyboardVisible == true)
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onCancel,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Close', style: cancelTextStyle())),
              )
          ],
        ),
      ),
    );
  }
}
