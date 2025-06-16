import 'package:alghoritms/intervals/merge_intervals.dart';
import 'package:test/test.dart';

void main() {
  group('mergeIntervals tests', () {
    test('Should merge overlapping intervals correctly', () {
      final input = [
        [2, 6],
        [1, 3],
        [8, 10],
        [15, 18]
      ];
      final expected = [
        [1, 6],
        [8, 10],
        [15, 18]
      ];
      expect(mergeIntervals(input), equals(expected));
    });

    test('All intervals overlap - should return one merged interval', () {
      final input = [
        [1, 5],
        [2, 8],
        [3, 10]
      ];
      final expected = [
        [1, 10]
      ];
      expect(mergeIntervals(input), equals(expected));
    });

    test('No overlapping intervals - should return original list sorted', () {
      final input = [
        [5, 8],
        [1, 2],
        [10, 12]
      ];
      final expected = [
        [1, 2],
        [5, 8],
        [10, 12]
      ];
      expect(mergeIntervals(input), equals(expected));
    });

    test('Empty list - should return empty list', () {
      final input = <List<int>>[];
      final expected = <List<int>>[];
      expect(mergeIntervals(input), equals(expected));
    });

    test('Single interval - should return same list', () {
      final input = [
        [4, 9]
      ];
      final expected = [
        [4, 9]
      ];
      expect(mergeIntervals(input), equals(expected));
    });

    test('Edge case: touching intervals should be merged', () {
      final input = [
        [1, 4],
        [4, 6],
        [6, 10]
      ];
      final expected = [
        [1, 10]
      ];
      expect(mergeIntervals(input), equals(expected));
    });

    test('Mixed overlapping and non-overlapping intervals', () {
      final input = [
        [8, 10],
        [1, 3],
        [4, 6],
        [2, 5]
      ];
      final expected = [
        [1, 6],
        [8, 10]
      ];
      expect(mergeIntervals(input), equals(expected));
    });

    test('Empty array', () {
      List<List<int>> input = [];
      List<List<int>> expected = [];
      expect(mergeIntervals(input), equals(expected));
    });
  });
}
