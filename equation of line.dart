import 'dart:io';

void main() {
  var x1 = 0, x2 = 0, y1 = 0, y2 = 0; //intiial values

  x1 = int.parse(stdin.readLineSync());
  y1 = int.parse(stdin.readLineSync());
  x2 = int.parse(stdin.readLineSync());
  y2 = int.parse(stdin.readLineSync());

  var line = Line(point: Point(x: x1, y: y1), secondPoint: Point(x: x2, y: y2));
  line.printLine();
}


class Point {
  int x = 0, y = 0;
  Point({this.x, this.y});
}

class Line {
  var point = Point(x: 0, y: 0);
  var secondPoint = Point(x: 0, y: 0);
  var slope;

  Line({this.point, this.secondPoint}) {
    slope = (point.y - secondPoint.y) / (point.x - secondPoint.y)!=0?(point.x - secondPoint.y):1;
  
  }5
  void printLine() {
    slope == 0
        ? print('y=${secondPoint.y}')
        : print(
            'y=${slope * secondPoint.x}x+${slope * secondPoint.x + secondPoint.y}');
  }
}
