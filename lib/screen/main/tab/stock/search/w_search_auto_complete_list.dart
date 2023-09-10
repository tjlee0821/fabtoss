import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchAutoCompleteList extends StatelessWidget {
  SearchAutoCompleteList({super.key});
  late final searchData = Get.find<StockSearchData>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) =>
            searchData.autoCompleteList[index].stockName.text.make());
  }
}
