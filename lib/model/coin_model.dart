class CoinModel {
  String id;
  String coin;
  String name;
  String type;
  String algorithm;
  double networkHashrate;
  double difficulty;
  double reward;
  String rewardUnit;
  double rewardBlock;
  double price;
  double volume;
  int updated;

  CoinModel({
    required this.id,
    required this.coin,
    required this.name,
    required this.type,
    required this.algorithm,
    required this.networkHashrate,
    required this.difficulty,
    required this.reward,
    required this.rewardUnit,
    required this.rewardBlock,
    required this.price,
    required this.volume,
    required this.updated,
  });

  factory CoinModel.fromJson(Map<String, dynamic> json) {
    return CoinModel(
      id: json['id'] ?? '',
      coin: json['coin'] ?? '',
      name: json['name'] ?? '',
      type: json['type'] ?? '',
      algorithm: json['algorithm'] ?? '',
      networkHashrate: json['network_hashrate'].toDouble() ?? -1,
      difficulty: json['difficulty'].toDouble()??0.0,
      reward: json['reward'].toDouble() ?? 0.0,
      rewardUnit: json['reward_unit'] ?? '',
      rewardBlock: json['reward_block'].toDouble() ?? 0,
      price: json['price'].toDouble() ?? 0.0,
      volume: json['volume'].toDouble() ?? 0.0,
      updated: json['updated'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'coin': coin,
      'name': name,
      'type': type,
      'algorithm': algorithm,
      'network_hashrate': networkHashrate,
      // 'difficulty': difficulty,
      // 'reward': reward,
      // 'reward_unit': rewardUnit,
      'reward_block': rewardBlock,
      'price': price,
      'volume': volume,
      'updated': updated,
    };
    return data;
  }
}
