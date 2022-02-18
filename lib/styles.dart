import 'package:flutter/material.dart';

class Styles{
  static const _textSizeDefault = 16.0;
  static const _textSizeLarge = 24.0;
  static const _textColorDefault = Color(0xFF666666);
  static const _textColorStrong = Color(0xFF000000);
  static const _fontDefault = "Poppins";
  static const header = TextStyle(
      fontSize: _textSizeLarge,
      color: _textColorStrong,
      fontFamily: _fontDefault,
      fontWeight: FontWeight.w700
  );
  static const textDefault = TextStyle(
      fontSize: _textSizeDefault,
      color: _textColorDefault,
      fontFamily: _fontDefault,
      fontWeight: FontWeight.w300
  );
  static const appbarStyle = TextStyle(
      fontFamily: _fontDefault,
      fontWeight: FontWeight.w300
  );
}