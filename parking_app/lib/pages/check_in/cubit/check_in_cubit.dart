import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../home/models/item.dart';

part 'check_in_state.dart';

class CheckInCubit extends Cubit<CheckInState> {
  CheckInCubit() : super(const CheckInState()) {
    Future.microtask(() => initialize());
  }

  Future<void> initialize() async {
    final items = [
      const GridItem(
        id: 'user',
        label: 'User',
        path: 'assets/images/placeholders/account.png',
      ),
      const GridItem(
        id: 'cycle',
        label: 'Cycle',
        path: 'assets/images/vehicles/bicycle.png',
      ),
      const GridItem(
        id: 'two_wheeler',
        label: 'Motor Cycle',
        path: 'assets/images/vehicles/motorcycle.png',
      ),
      const GridItem(
        id: 'four_wheeler',
        label: 'Car',
        path: 'assets/images/vehicles/car.png',
      ),
    ];
    emit(state.copyWith(items: items));
  }

  /// Selected a grid item
  Future<void> didSelect(GridItem item) async {}
}
