import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback click;
  const IconWidget({
    super.key,
    required this.icon,
    required this.click,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(
          10,
        ),
        child: SizedBox(height: 40, width: 40, child: Icon(icon)),
      ),
    );
  }
}
