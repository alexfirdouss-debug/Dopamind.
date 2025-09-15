import 'package:dopamind/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const GlassButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: GlassmorphicContainer(
        width: 250,
        height: 60,
        borderRadius: 30,
        blur: 10,
        alignment: Alignment.center,
        border: 2,
        linearGradient: LinearGradient(
          colors: [
            kcGlowColor.withOpacity(0.2),
            kcSecondaryColor.withOpacity(0.2)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderGradient: LinearGradient(
          colors: [
            kcGlowColor.withOpacity(0.5),
            Colors.white.withOpacity(0.5)
          ],
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
