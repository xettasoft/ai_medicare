import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ATextFormField extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ATextFormField(
      {this.hintText, this.labelText, this.obscureText, this.icon});
  final String? hintText;
  final String? labelText;
  final bool? obscureText;
  final Icon? icon;
  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
                  decoration: InputDecoration(
                    icon: icon ?? const Icon(Icons.input),
                    hintText: '$hintText'.tr,
                    labelText: '$labelText'.tr,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: obscureText == true
                        ? IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility))
                        : null,
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                  obscureText: obscureText ?? false))
        ],
      ));
}
