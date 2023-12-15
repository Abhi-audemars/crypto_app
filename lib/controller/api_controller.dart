import 'dart:convert';

import 'package:crypto_app/model/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class APIController extends GetxController {
  var isLoading = false.obs;
  var coinData = <CoinModel>[].obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      isLoading(true);
      http.Response res = await http.get(
          Uri.parse('https://mineable-coins.p.rapidapi.com/coins'),
          headers: {
            'X-RapidAPI-Key':
                '467ea4f520mshc75c9bb8bc57c93p19ee37jsn352a436f9cf2',
            'X-RapidAPI-Host': 'mineable-coins.p.rapidapi.com',
          });

      if (res.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(res.body);
        coinData = jsonData.map((e) => CoinModel.fromJson(e)).toList().obs;
      } else {
        debugPrint('error returning data');
      }
    } catch (e) {
      throw Exception(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
