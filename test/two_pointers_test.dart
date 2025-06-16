import 'package:alghoritms/two_pointers/k_nearest_numbers.dart';
import 'package:test/test.dart';

void main() {
  group('getNearestNumbers tests', () {
    test('Обычный случай', () {
      final input = [1, 2, 3, 4, 5];
      final expected = [2, 3, 4]; // если k=3
      expect(getNearestNumbers(input, 2, 3), containsAll(expected));
    });

    test('k равно длине массива', () {
      final input = [10, 20, 30, 40, 50];
      final expected = [10, 20, 30, 40, 50];
      expect(getNearestNumbers(input, 2, 5), containsAll(expected));
    });

    test('Элемент находится в начале массива', () {
      final input = [1, 2, 3, 4, 5];
      final expected = [1, 2, 3]; // k=3, index=0
      expect(getNearestNumbers(input, 0, 3), containsAll(expected));
    });

    test('Элемент находится в конце массива', () {
      final input = [1, 2, 3, 4, 5];
      final expected = [3, 4, 5]; // k=3, index=4
      expect(getNearestNumbers(input, 4, 3), containsAll(expected));
    });

    test('k=1 — возвращаем только сам элемент', () {
      final input = [5, 10, 15, 20];
      final expected = [15]; // index=2, k=1
      expect(getNearestNumbers(input, 2, 1), equals(expected));
    });

    test('Одинаковые значения вокруг центрального элемента', () {
      final input = [1, 2, 4, 4, 4, 5, 6];
      final result = getNearestNumbers(input, 3, 3); // target = 4
      expect(result.length, equals(3)); // любые три ближайших к 4
      expect(result.every((x) => x == 4 || x == 5 || x == 2), isTrue);
    });

    test('Массив с повторяющимися элементами', () {
      final input = [2, 2, 2, 2, 2];
      final result = getNearestNumbers(input, 2, 3);
      expect(result, everyElement(equals(2)));
    });

    test('Массив состоит из одного элемента', () {
      final input = [7];
      final result = getNearestNumbers(input, 0, 1);
      expect(result, equals([7]));
    });

    // test('Массив с отрицательными числами', () {
    //   final input = [-10, -5, -3, 0, 2, 5];
    //   final result = getNearestNumbers(input, 3, 2); // target = 0
    //   expect(result, containsAll([-3, 0]) | containsAll([0, 2]));
    // });
  });
}
