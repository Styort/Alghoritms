import 'package:alghoritms/strings/lenght_of_longest_substring.dart';
import 'package:test/test.dart';

void main() {
  group('length of no repetable substring tests', () {
    test('abcabcbb', () => expect(lengthOfLongestSubstring("abcabcbb"), 3));
    test('addefmoeoo', () => expect(lengthOfLongestSubstring("addefmoeoo"), 5));
    test('abba', () => expect(lengthOfLongestSubstring("abba"), 2));
    test('bbbbb', () => expect(lengthOfLongestSubstring("bbbbb"), 1));
    test('pwwkew', () => expect(lengthOfLongestSubstring("pwwkew"), 3));
    test('', () => expect(lengthOfLongestSubstring(""), 0));
    test('z', () => expect(lengthOfLongestSubstring("z"), 1));
  });
}
