import 'package:flutter/material.dart';

// extension ColorExtension on Color {
//   WidgetStateProperty<Color> get asWidgetState {
//     return WidgetStateProperty.all(this);
//   }

//   WidgetStateProperty<Color?> get asWidgetStateNullable {
//     return WidgetStateProperty.all(this);
//   }
// }

// extension DoubleExtension on double {
//   WidgetStateProperty<double> get asWidgetState {
//     return WidgetStateProperty.all(this);
//   }
// }

// extension EdgeInsetsExtension on EdgeInsets {
//   WidgetStateProperty<EdgeInsets> get asWidgetState {
//     return WidgetStateProperty.all(this);
//   }
// }

// extension BorderSideExtension on BorderSide {
//   WidgetStateProperty<BorderSide> get asWidgetState {
//     return WidgetStateProperty.all(this);
//   }
// }

extension WidgetStatePropertyExts<T> on T {
  WidgetStatePropertyAll<T> get asWidgetState =>
      WidgetStatePropertyAll<T>(this);
}
