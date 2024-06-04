part of 'check_in_cubit.dart';

class CheckInState extends Equatable {
  const CheckInState({this.items = const []});

  final List<GridItem> items;

  CheckInState copyWith({List<GridItem>? items}) {
    return CheckInState(
      items: items ?? this.items,
    );
  }

  @override
  List<Object> get props => [items];
}
