class PowerUp {
  final int id;
  final String name;
  final String type;
  final int value;
  final double multiplier;
  final double baseCost;
  int purchaseCount;
  int is_purchasable;

  PowerUp({
    required this.id,
    required this.name,
    required this.type,
    required this.value,
    required this.baseCost,
    required this.multiplier,
    this.purchaseCount = 0,
    this.is_purchasable = 1,
  });

  factory PowerUp.fromMap(Map<String, dynamic> json) => PowerUp(
    id: json['id'],
    name: json['name'],
    type: json['type'],
    value: json['value'],
    multiplier: json['multiplier'],
    baseCost: json['cost'],
    purchaseCount: json['purchase_count'],
    is_purchasable: json['is_purchasable'],
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'value': value,
      'cost': baseCost,
      'multiplier': multiplier,
      'purchase_count': purchaseCount,
      'is_purchasable': is_purchasable,
    };
  }
}
