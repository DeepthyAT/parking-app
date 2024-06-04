import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_app/pages/check_in/cubit/check_in_cubit.dart';
import 'package:parking_app/pages/check_in/view/item.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({super.key, this.title});

  final String? title;

  static Route<CheckInPage> get route =>
      MaterialPageRoute(builder: (_) => const CheckInPage());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckInCubit(),
      child: BlocBuilder<CheckInCubit, CheckInState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(title ?? 'In'),
            ),
            body: GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.items.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 5 / 4,
              ),
              itemBuilder: (context, index) {
                final item = state.items[index];
                return InkWell(
                  onTap: () => context.read<CheckInCubit>().didSelect(item),
                  child: CheckInGridTile(item: item),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
