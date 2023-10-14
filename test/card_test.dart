import 'package:set_solver/set_solver.dart';
import 'package:test/test.dart';

void main() {
  group('SetCard basic functionality', () {
    final card1 = SetCard(1, Shape.squiggle, Color.red, Shade.solid);
    final card2 = SetCard(1, Shape.squiggle, Color.red, Shade.solid);
    final card3 = SetCard(2, Shape.squiggle, Color.red, Shade.solid);
    final card4 = SetCard(2, Shape.squiggle, Color.green, Shade.solid);
    final card5 = SetCard(2, Shape.squiggle, Color.green, Shade.striped);

    test('Test equality', () {
      expect(card1 == card2, isTrue);
    });

    test('Test inequality', () {
      expect(card1 == card3, isFalse);
      expect(card2 == card3, isFalse);
      expect(card3 == card4, isFalse);
      expect(card4 == card5, isFalse);
    });
  });

  group('SetCard comparisons', () {
    final card1 = SetCard(1, Shape.oval, Color.green, Shade.solid);
    final card2 = SetCard(2, Shape.squiggle, Color.red, Shade.open);
    final card3 = SetCard(3, Shape.diamond, Color.purple, Shade.striped);
    final card4 = SetCard(1, Shape.diamond, Color.red, Shade.solid);
    final card5 = SetCard(1, Shape.diamond, Color.green, Shade.open);
    final card6 = SetCard(1, Shape.diamond, Color.green, Shade.solid);

    test('Test comparisons based on count', () {
      expect(card1.compareTo(card2) < 0, isTrue);
      expect(card1.compareTo(card3) < 0, isTrue);
      expect(card2.compareTo(card1) < 0, isFalse);
      expect(card3.compareTo(card2) < 0, isFalse);
      expect(card2.compareTo(card2) == 0, isTrue);
    });

    test('Test comparisons based on shape', () {
      expect(card1.compareTo(card4) < 0, isFalse);
      expect(card4.compareTo(card1) < 0, isTrue);
    });

    test('Test comparisons based on color', () {
      expect(card5.compareTo(card4) < 0, isFalse);
      expect(card4.compareTo(card5) < 0, isTrue);
    });

    test('Test comparisons based on shade', () {
      expect(card6.compareTo(card5) < 0, isTrue);
      expect(card5.compareTo(card6) < 0, isFalse);
    });

    test('Test comparison with sorting', () {
      var l1 = [card1, card2, card3, card4, card5, card6];
      // the sorted version of l1
      var l2 = [card4, card6, card5, card1, card2, card3];

      l1.sort();
      for (var i = 0; i < l1.length; i++) {
        expect(l1[i] == l2[i], isTrue);
      }
    });
  });
}
