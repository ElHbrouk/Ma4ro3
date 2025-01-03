import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_text_field.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle({
    super.key,
    required this.individual,
    required this.text,
    this.validator,
  });

  final TextEditingController individual;
  final String text;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          text,
          style: AppStyles.boldBlack18(context),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          validator: validator,
          textController: individual,
          borderWidth: 1.5,
        ),
      ],
    );
  }
}
