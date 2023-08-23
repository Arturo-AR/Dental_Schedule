import 'package:dental_schedule/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    this.imageColor,
    this.heightBetween,
    required this.image,
    required this.title,
    this.imageHeight = 0.20,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  //Variables -- Declared in Constructor
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, title;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image), color: imageColor, height: size.height * imageHeight),
        SizedBox(height: heightBetween),
        Text(title, style: Theme.of(context).textTheme.displaySmall!.apply(color: aPrimaryColor)),
        //Text(subTitle, textAlign: textAlign, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
