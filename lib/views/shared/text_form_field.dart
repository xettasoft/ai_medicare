import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ATextFormField extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ATextFormField(
      {this.hintText,
      this.errorText,
      this.labelText,
      this.obscureText,
      this.icon,
      this.onTextChange,
      this.onVisible});
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final bool? obscureText;
  final Icon? icon;
  final void Function(String)? onTextChange;
  final void Function()? onVisible;

  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
          color: ThemeController.to.themeMode == ThemeMode.light
              ? Colors.grey.shade200
              : Colors.black26,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
                  decoration: InputDecoration(
                    icon: icon ?? const Icon(Icons.input),
                    hintText: '$hintText'.tr,
                    labelText: '$labelText'.tr,
                    errorText: errorText,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    // suffixIcon: obscureText == true
                    //     ? IconButton(
                    //         onPressed: onVisible,
                    //         icon: const Icon(Icons.visibility))
                    //     : null,
                  ),
                  onChanged: onTextChange,
                  obscureText: obscureText ?? false))
        ],
      ));
}
