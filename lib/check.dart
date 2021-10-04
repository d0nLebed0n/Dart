import 'package:first_flutter_project/binary.dart';
import 'package:first_flutter_project/delimeters.dart';
import 'package:first_flutter_project/string_collection.dart';
import 'package:first_flutter_project/string_to_num.dart';
import 'package:first_flutter_project/string_to_num_collection.dart';
import 'package:first_flutter_project/point.dart';
import 'package:first_flutter_project/user.dart';
import 'package:first_flutter_project/sqtr_n.dart';

void main() {
  print('НОД: ${DelCalc(30, 18).gcd()}');
  print('НОК: ${DelCalc(30, 18).lcm()}');

  Binary(30).toDec();
  Binary(34).toBinary();

  CollectionOfNum('fegrerg erg 2344 ewfwe wef wef43few wefwe 324234 fwef').findNum();

  CollectionOfWords(
      ['third', 'forth', 'first', 'second', 'third', 'fifth', 'first'])
      .mapOfWords();

  CollectionOfDigit('one, two, three, house, horse, five, four, dog, cat')
      .setOfDigit();

  Point(2, 3, 4).pointTo(1, 2, 3);
  Point.zero();
  Point.line();

  print('корень ${16.sqrtN(2)}');

  User user1 = User('user1@mail.ru');
  AdminUser user3 = AdminUser('user2@mail.ru');
  GeneralUser user2 = GeneralUser('user3@mail.ru');
  UserManager users = UserManager<User>();
  users.addUser(user1);
  users.addUser(user2);
  users.addUser(user3);
  users.printer();
}
