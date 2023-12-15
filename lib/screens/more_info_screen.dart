// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  final String id;
  final String coin;
  final String name;
  final String type;
  final String algorithm;
  final double networkHashrate;
  final double difficulty;
  final double reward;
  final String rewardUnit;
  final double rewardBlock;
  final double price;
  final double volume;
  final int updated;

  const MoreInfo({
    Key? key,
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('coin: $id'),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('name: $name'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('type: $type'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('algorithm: $algorithm'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('network_hashrate: $networkHashrate'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('difficulty: $difficulty'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('reward: $reward'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('reward_unit: $rewardUnit'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('reward_block: $rewardBlock'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('price: $price'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('volume: $volume'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('updated: $updated'),
            ),
          ],
        ),
      ),
    );
  }
}
