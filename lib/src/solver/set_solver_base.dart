import 'package:set_solver/src/solver/set_card.dart';
import 'package:set_solver/src/solver/set_card_types.dart';

/// Identifies the third card necessary for making a Set of SetCard objects given card1 and card2.
/// This does NOT check of `card1` and `card2` are equal.
SetCard getSetMakingCard(SetCard card1, SetCard card2) {
  final Shape shape = card1.shape.getSetMakingShape(card2.shape);
  final Color color = card1.color.getSetMakingColor(card2.color);
  final Shade shade = card1.shade.getSetMakingShade(card2.shade);
  final int count = (card1.count == card2.count
      ? card1.count
      : 6 - card1.count - card2.count);

  return SetCard(count, shape, color, shade);
}

/// Returns all Sets currently available in cards.
/// Does NOT make a distinct collection of Sets.
/// Does NOT say what is an "optimal" choice.
