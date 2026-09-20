import 'package:flutter/material.dart';

class GenderSelected extends StatelessWidget {
  const new({
    super.key,
    required this.image,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String image;
  final String text;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).secondaryHeaderColor
                : Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected
                  ? Theme.of(context).focusColor
                  : Theme.of(context).secondaryHeaderColor,
            ),
          ),
          child: Column(
            children: [
              Image.asset(image, color: Theme.of(context).focusColor),
              Text(text, style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
      ),
    );
  }
}
