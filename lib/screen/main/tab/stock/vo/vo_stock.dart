import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_popular_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock({
    required super.name,
    required super.yesterdayClosePrice,
    required super.currentPrice,
    required this.stockImagePath,
  });
}
