import 'package:filmijobs/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final IconData? icon;
  final Size size;
  final double iconSize;
  final bool isSelected;
  const DrawerItem({
    Key? key,
    this.onTap,
    required this.title,
    this.iconSize = 22,
    required this.size,
    this.isSelected = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * .8,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? ColorConstants.pink2 : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  boxShadow: [
                    if (isSelected)
                      BoxShadow(
                        offset: const Offset(0, 0),
                        color: Colors.white.withOpacity(.3),
                      )
                  ],
                  color: isSelected
                      ? Colors.transparent
                      : const Color.fromARGB(255, 73, 72, 77).withOpacity(.25),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: iconSize,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  color: isSelected
                      ? Colors.white
                      : const Color.fromARGB(255, 124, 124, 128),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
            // trailing: const Icon(AntDesign.arrowright),
          ),
        ),
      ),
    );
  }
}
