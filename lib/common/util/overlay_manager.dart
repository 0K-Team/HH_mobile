import 'dart:ui';

import 'package:flutter/material.dart';

class OverlayManager {
  static bool _overlayDisplayed = false;
  static OverlayEntry? _overlayEntry;

  static void showOverlay(BuildContext context) {
    if (_overlayDisplayed) {
      return;
    }

    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          // Semi-transparent background with blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          // Centered overlay content
          Center(
            child: const CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 4,
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    _overlayDisplayed = true;
  }

  static void hideOverlay() {
    if (!_overlayDisplayed) {
      return;
    }

    _overlayEntry?.remove();
    _overlayDisplayed = false;
  }
}
