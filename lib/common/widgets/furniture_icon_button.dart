import 'package:flutter/material.dart';

enum IconButtonSize{
  small,
  medium,
  large
}

class FurnitureIconButton extends StatelessWidget {
  final IconData icon;
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
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(3, 0),
              blurRadius: 10,
              spreadRadius: 2.5,
            )
          ]),
      child: IconButton(
        onPressed: onClick,
        icon: Icon(icon, size: 30,),
      ),
    );
  }
}
