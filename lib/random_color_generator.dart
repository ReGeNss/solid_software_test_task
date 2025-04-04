import 'dart:math';
import 'package:flutter/widgets.dart';

const _rgbColorMax = 255; 
const double _opacityMax = 1;

//// Class for generating random color
class RandomColorGenerator{
  int _red = 0; 
  int _green = 0; 
  int _blue = 0; 
  double _opacity = _opacityMax;
  final _random = Random();

  /// Return color from generated parameters
  Color get color =>  Color.fromRGBO(_red, _green, _blue, _opacity);

  /// Return opposite color from generated parameters
  Color get oppositeColor{
    return Color.fromRGBO(
      _rgbColorMax - _red,
      _rgbColorMax - _green,
      _rgbColorMax - _blue,
      _opacityMax,
    );
  }

  /// Initialize class with random color parameters
  RandomColorGenerator() {
    generateColorParametrs();
  }

  /// Generate randomly generates color parameters
  void generateColorParametrs() {
    _red = _random.nextInt(_rgbColorMax + 1);
    _green = _random.nextInt(_rgbColorMax + 1);
    _blue = _random.nextInt(_rgbColorMax + 1);
    _opacity = _random.nextDouble() * _opacityMax;
  }  
}
