import 'package:set_solver/src/set_card.dart';
import 'package:set_solver/src/set_card_types.dart';

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
} // this is just here from the default.

SetCard getSetMakingCard(SetCard card1, SetCard card2) {
  final Shape shape = card1.shape.getSetMakingShape(card2.shape);
  final Color color = card1.color.getSetMakingColor(card2.color);
  final Shade shade = card1.shade.getSetMakingShade(card2.shade);
  final int count = card1.count == card2.count ? card1.count : 6 - card1.count - card2.count;

  return SetCard(count, shape, color, shade);
}
