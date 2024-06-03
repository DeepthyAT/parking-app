part of 'home_cubit.dart';

class HomeState {
  HomeState({this.items = const []});

  final List<GridItem> items;

  HomeState copyWith({List<GridItem>? items}) {
    return HomeState(
      items: items ?? this.items,
    );
  }
}
