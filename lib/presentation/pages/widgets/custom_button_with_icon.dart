import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';

import '../../../common/dimensions.dart';
import '../../../theme/light_theme_colors.dart';
import '../../../utils/assets.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonWithIcon({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(paddingRegular1),
          decoration: const BoxDecoration(color: secondaryColor),
          child: InkWell(
            onTap: onPressed,
            child: Row(
              children: [
                Text(text, style: context.textTheme.titleSmall),
                SizedBox(width: paddingRegular2),
                Image.asset(Assets.northEast, height: iconSizeL),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
