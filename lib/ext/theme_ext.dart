import 'package:flutter/material.dart';

extension ThemeExt on ThemeData {
  Color get surface1 => Color.alphaBlend(
        colorScheme.primary.withOpacity(0.05),
        colorScheme.surface,
      );

  Color get surface2 => Color.alphaBlend(
        colorScheme.primary.withOpacity(0.08),
        colorScheme.surface,
      );

  Color get surface3 => Color.alphaBlend(
        colorScheme.primary.withOpacity(0.11),
        colorScheme.surface,
      );

  Color get surface4 => Color.alphaBlend(
        colorScheme.primary.withOpacity(0.12),
        colorScheme.surface,
      );

  Color get surface5 => Color.alphaBlend(
        colorScheme.primary.withOpacity(0.14),
        colorScheme.surface,
      );
}
