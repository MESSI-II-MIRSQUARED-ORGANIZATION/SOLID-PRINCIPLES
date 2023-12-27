import 'area_calc.dart';
import 'shapes.dart';
import 'sum_outputter.dart';

void main() {
  print('Welcome to S.O.L.I.D');

  var shapes = [Circle(2), Square(3)];
  // var solidShapes = [Square(5), Square(7)];

  var area = AreaCalculator(shapes);

  var output = SumCalcOutputter(area);

  print(output.JSON());
  print(output.HTML());
  print(output.ToString());
}
