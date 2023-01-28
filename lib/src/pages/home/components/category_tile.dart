import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../config/custom_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.category,
    required this.isSelectd,
    required this.onPressd,
  }) : super(key: key);

  final String category;
  final bool isSelectd;
  final VoidCallback onPressd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
      ),
      child: GestureDetector(
        onTap: onPressd,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isSelectd
                  ? CustomColors.customSwatchColor
                  : Colors.transparent,
            ),
            child: Text(
              category,
              style: TextStyle(
                color:
                    isSelectd ? Colors.white : CustomColors.customContrastColor,
                fontWeight: FontWeight.bold,
                fontSize: isSelectd ? 16 : 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
