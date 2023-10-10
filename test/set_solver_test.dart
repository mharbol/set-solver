import 'package:set_solver/src/set_card.dart';
import 'package:set_solver/src/set_card_types.dart';
import 'package:set_solver/src/set_solver_base.dart';
import 'package:test/test.dart';

void main() {
  final card1 = SetCard(1, Shape.oval, Color.red, Shade.solid);
  final card2 = SetCard(1, Shape.diamond, Color.red, Shade.striped);
  final card3 = SetCard(2, Shape.squiggle, Color.red, Shade.open);
  final card4 = SetCard(3, Shape.oval, Color.red, Shade.solid);
  final card5 = SetCard(1, Shape.squiggle, Color.red, Shade.open);
  final card6 = SetCard(2, Shape.oval, Color.red, Shade.solid);
  final card7 = SetCard(3, Shape.diamond, Color.red, Shade.striped);
  final card8 = SetCard(1, Shape.squiggle, Color.red, Shade.open);
  final card9 = SetCard(1, Shape.squiggle, Color.green, Shade.open);
  final card10 = SetCard(1, Shape.squiggle, Color.purple, Shade.open);
  final card11 = SetCard(1, Shape.squiggle, Color.red, Shade.open);
  final card12 = SetCard(1, Shape.diamond, Color.green, Shade.striped);

  group('Finds the correct Set based on count', () {
    test('Test count same', () {
      expect(getSetMakingCard(card1, card2) == card5, isTrue);
    });

    test('Test count different', () {
      expect(getSetMakingCard(card2, card3) == card4, isTrue);
    });
  });

  group('Finds the correct Set based on shape', () {
    test('Test shape same', () {
      expect(getSetMakingCard(card1, card4) == card6, isTrue);
    });

    test('Test shape different', () {
      expect(getSetMakingCard(card5, card6) == card7, isTrue);
    });
  });

  group('Finds correct Set based on color', () {
    test('Test color same', () {
      expect(getSetMakingCard(card6, card7) == card8, isTrue);
    });

    test('Test color different', () {
      expect(getSetMakingCard(card8, card9) == card10, isTrue);
    });
  });

  group('Finds correct Set based on shade', () {
    test('Test shade same', () {
      expect(getSetMakingCard(card9, card10) == card11, isTrue);
    });

    test('Test shade different', () {
      expect(getSetMakingCard(card1, card10) == card12, isTrue);
    });
  });
}
