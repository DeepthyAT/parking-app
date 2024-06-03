import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(items: defaultItems)) {
    Future.microtask(() => initialize());
  }

  static const defaultItems = [
    GridItem(id: 'in', label: 'IN', color: Colors.green),
    GridItem(id: 'out', label: 'OUT', color: Colors.amber),
    GridItem(id: 'price', label: 'Price'),
    GridItem(id: 'pass', label: 'Pass'),
  ];

  Future<void> initialize() async {
    final items = [
      GridItem(id: 'in', label: 'IN', color: Colors.green[100]),
      GridItem(id: 'out', label: 'OUT', color: Colors.amber[100]),
      const GridItem(id: 'price', label: 'Price'),
      const GridItem(id: 'pass', label: 'Pass'),
    ];
    emit(state.copyWith(items: items));
  }
}
