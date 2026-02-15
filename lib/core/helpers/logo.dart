import 'package:flutter/material.dart';

ClipOval buildLogo(BuildContext context, {double size = 70}) {
  if (Theme.of(context).brightness == Brightness.dark) {
    return ClipOval(
      child: Image.asset(
        'assets/images/logo-dark.jpg',
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  } else if (Theme.of(context).brightness == Brightness.light) {
    return ClipOval(
      child: Image.asset(
        'assets/images/logo-light.jpg',
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  } else {
    // Fallback in case brightness is not set
    return ClipOval(
      child: Image.asset(
        'assets/images/logo-light.jpg',
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
