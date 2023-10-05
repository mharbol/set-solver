import 'package:set_solver/src/set_card_types.dart';

class SetCard {
  final int count;

  final Shape shape;

  final Color color;

  final Shading shade;

  SetCard(this.count, this.shape, this.color, this.shade);

  @override
  bool operator ==(Object other) =>
      other is SetCard &&
      other.count == count &&
      other.shape == shape &&
      other.color == color &&
      other.shade == shade;

  // TODO fix please
  @override
  int get hashCode => 3;
}
