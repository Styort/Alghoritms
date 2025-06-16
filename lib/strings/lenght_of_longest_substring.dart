// Дана строка, найти длину самой длинной подстроки без повторяющихся символов.
//
// Вход: "abcabcbb"
// Выход: (ответ - "abc" - длина 3)

// "addefmoeoo"
// "efmoe" - 5
// "abcdeaoer"
// "bcdeaoer"

// Решаем через sliding window, если встречается дубликат, двигаем начало окна
import 'dart:math';

/// Решение за O(n)
int lengthOfLongestSubstring(String input) {
  if (input.isEmpty) return 0;

  // Хранит в себе последние позиции каждого символа
  Map<String, int> charMap = {};
  var maxLength = 0;

  int start = 0;

  for (int end = 0; end < input.length; end++) {
    String currentChar = input[end];

    // При нахождении повторяющегося символа двигаем начало окна (start) после предыдущей позиции этого символа
    if (charMap.containsKey(currentChar)) {
      // Если символ уже был и находится внутри текущего окна — двигаем start
      // Берём max(start, ...) чтобы не двигать окно назад
      start = max(start, charMap[currentChar]! + 1);
    }

    // Обновляем последнюю позицию текущего символа
    charMap[currentChar] = end;

    // Вычисляем длину текущего окна и обновляем максимум
    int currentLength = end - start + 1;
    maxLength = max(maxLength, currentLength);
  }

  return maxLength;
}
