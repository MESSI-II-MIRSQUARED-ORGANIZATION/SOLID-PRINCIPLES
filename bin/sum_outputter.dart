// ignore_for_file: non_constant_identifier_names

import 'area_calc.dart';

class SumCalcOutputter {
  AreaCalculator area;

  SumCalcOutputter(this.area);

  JSON() {
    return {"data": area.sum()};
  }

  HTML() {
    return '<div> ${area.sum().toString()} </div>';
  }

  ToString() {
    return area.sum().toString();
  }
}
