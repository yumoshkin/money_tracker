import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData _themeData = ThemeData(
  fontFamily: 'SF UI Display',
);

ThemeData themeData = _themeData.copyWith(
  colorScheme: _colorSceme(_themeData.colorScheme),
  elevatedButtonTheme: _elevatedButtonThemeData(),
  textButtonTheme: _textButtonThemeData(),
  appBarTheme: _appBarTheme(_themeData.appBarTheme),
  bottomNavigationBarTheme:
      _bottomNavigationBarLight(_themeData.bottomNavigationBarTheme),
  cardTheme: _cardTheme(_themeData.cardTheme),
  dialogTheme: _dialogTheme(_themeData.dialogTheme),
  // textTheme: _textLight(_themeData.textTheme),
  // inputDecorationTheme: _inputDecorationLidht(_themeLight.inputDecorationTheme),
  // primaryColorDark: Colors.deepOrange[100],
);

ColorScheme _colorSceme(ColorScheme base) {
  return base.copyWith(
    primary: Color(0xff9053eb),
  );
}

ElevatedButtonThemeData _elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      // foregroundColor: Colors.black54,
      // backgroundColor: Colors.deepOrange[100],
      textStyle: TextStyle(
        fontSize: 17,
        // fontWeight: FontWeight.w900,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}

TextButtonThemeData _textButtonThemeData() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),
      padding: EdgeInsets.zero,
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );
}

AppBarTheme _appBarTheme(AppBarTheme base) {
  return base.copyWith(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xff9053eb),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );
}

BottomNavigationBarThemeData _bottomNavigationBarLight(
    BottomNavigationBarThemeData base) {
  return base.copyWith(
    selectedLabelStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
  );
}

CardTheme _cardTheme(CardTheme base) {
  return base.copyWith(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 8,
    shadowColor: Colors.black.withOpacity(0.5),
    margin: EdgeInsets.only(top: 25),
  );
}

DialogTheme _dialogTheme(DialogTheme base) {
  return base.copyWith(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

// AppBarTheme _appBarLight(AppBarTheme base) {
//   return base.copyWith(
//     color: Colors.black54,
//     foregroundColor: Colors.deepOrange[100],
//   );
// }

// InputDecorationTheme _inputDecorationLidht(InputDecorationTheme base) {
//   return base.copyWith(
//     floatingLabelStyle: TextStyle(
//       color: Colors.deepOrange[100],
//     ),
//     iconColor: Colors.deepOrange[100],
//     focusedBorder: UnderlineInputBorder(
//       borderSide: BorderSide(
//         color: Colors.deepOrange[100]!,
//       ),
//     ),
//   );
// }
