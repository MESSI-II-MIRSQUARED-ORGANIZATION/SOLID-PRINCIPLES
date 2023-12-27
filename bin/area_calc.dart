import 'dart:math';

import 'shapes.dart';

class AreaCalculator {
  List<dynamic> shapes;

  AreaCalculator(this.shapes);

  sum() {
    List<num> area = <num>[];

    // for (var shape in shapes) {
    //   if (shape is Square) {
    //     area.add(pow(shape.length, 2));
    //   } else if (shape is Circle) {
    //     var res = pi * pow(shape.radius, 2);
    //     area.add(res);
    //   }
    // }

    // for (var shape in shapes) {
    //   area.add(shape.area());
    // }

    for (var shape in shapes) {
      if (shape is ShapeInterface) {
        area.add(shape.area());
        continue;
      }
      throw Exception('$shape is not supported');
    }
    return area.reduce((x, y) => x + y);
  }
}
