import 'package:crypto_app/controller/api_controller.dart';
import 'package:crypto_app/screens/more_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final APIController controller = Get.put(APIController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Data'),
        shadowColor: Colors.white,
        centerTitle: true,
        surfaceTintColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: controller.coinData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(
                        MoreInfo(
                          id: controller.coinData[index].id,
                          coin: controller.coinData[index].coin,
                          name: controller.coinData[index].name,
                          type: controller.coinData[index].type,
                          algorithm: controller.coinData[index].algorithm,
                          networkHashrate:
                              controller.coinData[index].networkHashrate,
                          difficulty: controller.coinData[index].difficulty,
                          reward: controller.coinData[index].reward,
                          rewardUnit: controller.coinData[index].rewardUnit,
                          rewardBlock: controller.coinData[index].rewardBlock,
                          price: controller.coinData[index].price,
                          volume: controller.coinData[index].volume,
                          updated: controller.coinData[index].updated,
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Colors.purple.shade100, width: 2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        controller.coinData[index].name ==
                                                '2Miners'
                                            ? ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  'https://static.cryptofans.news/images/49bf6215_7765_4d6d_9b83_62dbe3941d83.jpeg',
                                                  height: 45,
                                                  width: 45,
                                                  fit: BoxFit.cover,
                                                ),
                                              )
                                            : ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  'https://img.freepik.com/free-vector/cryptocurrency-bitcoin-golden-coin-background_1017-31505.jpg?size=626&ext=jpg&ga=GA1.1.1222169770.1702512000&semt=ais',
                                                  height: 45,
                                                  width: 45,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                        const SizedBox(width: 5),
                                        Text(
                                          controller.coinData[index].coin,
                                          style: const TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Flexible(
                                      child: Text(
                                        controller.coinData[index].name,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    controller.coinData[index].price.toString(),
                                    style: TextStyle(
                                        color:
                                            controller.coinData[index].price > 1
                                                ? Colors.green
                                                : Colors.red,
                                        fontSize: 35,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    controller.coinData[index].reward
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Type: ${controller.coinData[index].type}',
                                      style: const TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Algorithm: ${controller.coinData[index].algorithm}',
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
