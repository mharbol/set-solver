
import 'package:set_solver/src/solver/set_card_types.dart';

class SetCard implements Comparable<SetCard> {
  final int count;

  final Shape shape;

  final Color color;

  final Shade shade;

  SetCard(this.count, this.shape, this.color, this.shade);

  @override
  int compareTo(SetCard other) => (count != other.count
      ? count - other.count
      : (shape != other.shape
          ? shape.compareTo(other.shape)
          : (color != other.color
              ? color.compareTo(other.color)
              : (shade != other.shade ? shade.compareTo(other.shade) : 0))));

  @override
  bool operator ==(Object other) =>
      other is SetCard &&
      other.count == count &&
      other.shape == shape &&
      other.color == color &&
      other.shade == shade;

  @override
  int get hashCode => count * shape.hashCode * color.hashCode * shade.hashCode;

  @override
  String toString() => "$count $shade $color $shape";
}
