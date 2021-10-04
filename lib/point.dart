import 'dart:math';

class Point {
  int x = 0;
  int y = 0;
  int z = 0;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.line() {
    return Point(1, 1, 0);
  }

  num pointTo(int x1, int y1, int z1) {
    num distance = sqrt(pow(x - x1, 2) + pow(y - y1, 2) + pow(z - z1, 2));
    print("Расстояние от точки X=$x, Y=$y, Z=$z до точки X=$x1, Y=$y1, Z=$z1 равно $distance");

    return distance;
  }
}