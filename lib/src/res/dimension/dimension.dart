import 'package:flutter/material.dart';

class AppDimens {
  /// Get access to dimensions for component spacing and font size
  static double get dimens2pt => 2.0;
  static double get dimens4pt => 4.0;
  static double get dimens8pt => 8.0;
  static double get dimens14pt => 14.0;
  static double get dimens16pt => 16.0;
  static double get dimens18pt => 18.0;
  static double get dimens24pt => 24.0;
  static double get dimens32pt => 32.0;
  static double get dimens48pt => 48.0;
  static double get dimens56pt => 56.0;
  static double get dimens64pt => 64.0;
  static double get dimens80pt => 80.0;
  static double get dimens110pt => 110.0;
  static double get dimens125pt => 125.0;
  static double get dimens160pt => 160.0;
  static BorderRadius get borderRadius4pt => BorderRadius.circular(4.0);
  static BorderRadius get borderRadius8pt => BorderRadius.circular(8.0);
  static BorderRadius get borderRadius10pt => BorderRadius.circular(10.0);
  static BorderRadius get borderRadius16pt => BorderRadius.circular(16.0);
  static BorderRadius get borderRadius18pt => BorderRadius.circular(18.0);
  static BorderRadius get borderRadius32pt => BorderRadius.circular(32.0);
  static BorderRadius get borderRadius48pt => BorderRadius.circular(48.0);
  static Radius get radius4pt => const Radius.circular(4.0);
  static Radius get radius8pt => const Radius.circular(8.0);
  static Radius get radius10pt => const Radius.circular(10.0);
  static Radius get radius16pt => const Radius.circular(16.0);
  static Radius get radius18pt => const Radius.circular(18.0);
  static Radius get radius24pt => const Radius.circular(24.0);
  static Radius get radius32pt => const Radius.circular(32.0);
  static double get splashRadius => 18.0;

  static TextStyle get bodyMedium => const TextStyle(
        fontSize: 21.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      );

  static TextStyle get bodyLarge => const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      );

  static InputDecoration get inputDecoration => InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade50,
        contentPadding: EdgeInsets.all(dimens16pt),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[400]!),
          borderRadius: borderRadius16pt,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green, width: 1.5),
          borderRadius: borderRadius16pt,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: borderRadius16pt,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: borderRadius16pt,
        ),
        hintStyle: bodyLarge.copyWith(
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade400,
        ),
      );
}
