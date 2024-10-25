import 'package:flutter/material.dart';

enum IconButtonSize{
  small,
  medium,
  large
}

class FurnitureIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onClick;
  final Color? backgroundColor;
  final IconButtonSize? size;
  const FurnitureIconButton({
    super.key,
    required this.icon,
    required this.onClick,
    this.backgroundColor,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: onClick,
        icon: icon,
      ),
    );
  }
}
