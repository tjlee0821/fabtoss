import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_popular_search_list.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_search_auto_complete_list.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_search_bar.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_search_history_stock_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 's_stock_detail.dart';

class StockSearchScreen extends StatefulWidget {
  const StockSearchScreen({Key? key}) : super(key: key);

  @override
  State<StockSearchScreen> createState() => _StockSearchScreenState();
}

class _StockSearchScreenState extends State<StockSearchScreen>
    with SearchStockDataProvider {
  final _controller = TextEditingController();

  @override
  void initState() {
    if (!Get.isRegistered<StockSearchData>()) {
      Get.put(StockSearchData());
    }
    _controller.addListener(() {
      searchData.search(_controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    searchData.autoCompleteList.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(controller: _controller),
      body: Obx(
        () => searchData.autoCompleteList.isEmpty
            ? ListView(
                children: const [
                  SearchHistoryStockList(),
                  PopularSearchStockList(),
                ],
              )
            : ListView.builder(
                itemCount: searchData.autoCompleteList.length,
                itemBuilder: (BuildContext context, int index) {
                  final element = searchData.autoCompleteList[index];
                  return Tap(
                    onTap: () {
                      Nav.push(StockDetailScreen(stockName: element.name));
                      searchData.addHistory(element);
                      _controller.clear();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: element.name.text.make(),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
