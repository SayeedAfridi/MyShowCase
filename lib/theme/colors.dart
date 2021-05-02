part of 'theme.dart';

class AppColor {
  const AppColor._();

  static const Color gunmetal = Color(0xFF2D2F41);
  static const Color charleston = Color(0xFF242634);

  static const Color independence = Color(0xFF444974);
  static const Color lavender = Color(0xFFEAECFF);
  static const Color pastelOrange = Color(0xFFFFB74D);
  static const Color cornflowerBlue = Color(0xFF748EF6);
  static const Color paleCyan = Color(0xFF77DDFF);
  static const Color heliotrope = Color(0xFFC279FB);
  static const Color cyclamen = Color(0xFFEA74AB);

  static const Color matteCharcoal = Color(0xFF3B4248);
}

class GradientColors {
  const GradientColors._();

  static const List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  static const List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
  static const List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  static const List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
  static const List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];

  static List<List<Color>> allGradient = [
    GradientColors.sky,
    GradientColors.sunset,
    GradientColors.sea,
    GradientColors.mango,
    GradientColors.fire,
  ];
}
