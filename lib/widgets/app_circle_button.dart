//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
 
  const AppCircleButton({
    super.key, 
    this.onTap, 
    required this.putchild, 
    this.color, 
    this.width = 60});
    
  final VoidCallback? onTap;
  final Widget putchild;
  final Color? color;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      clipBehavior: Clip.hardEdge,
      shape: const CircleBorder(),
      child: InkWell(child:putchild));
  }
}