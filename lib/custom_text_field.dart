import 'package:filmijobs/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String? title;
  final bool obscureText;
  final TextStyle? titleStyle;
  final String? initialValue;
  final bool isRequired;
  final bool readonly;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? maxlines;
  final Widget? prefix;
  final Widget? suffix;
  final double padding;
  final TextInputType? keyboardType;
  const CustomTextField({
    Key? key,
    this.controller,
    this.titleStyle,
    this.validator,
    this.initialValue,
    this.obscureText = false,
    this.keyboardType,
    this.padding = 0,
    this.isRequired = false,
    this.readonly=false,
    this.title,
    this.inputFormatters,
    this.maxLength,
    this.suffix,
    this.prefix,
    this.hintText,
    this.maxlines,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Stack(
              children: [
                Text(
                  title!,
                  style: titleStyle ??
                      GoogleFonts.poppins(
                        color: ColorConstants.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                if (isRequired)
                  Positioned(
                    right: 0,
                    top: 2,
                    child: Icon(
                      CupertinoIcons.staroflife_fill,
                      color: Colors.red,
                      size: 8,
                    ),
                  )
              ],
            ),
          // const SizedBox(
          //   height: 3,
          // ),
          TextFormField(
            readOnly: readonly,
            initialValue: initialValue,
            controller: controller,
            inputFormatters: inputFormatters,
            maxLength: maxLength,
            maxLines: maxlines,
            keyboardType: keyboardType,
            obscureText: obscureText,
            validator: validator,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16),
            decoration: InputDecoration(
              counterText: "",
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 17),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorConstants.pink2,
                  width: 1,
                ),
              ),
              suffixIcon: suffix,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: ColorConstants.black,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorConstants.peach2,
                  width: 1,
                ),
              ),
              focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: ColorConstants.error,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
