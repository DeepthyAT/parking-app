import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_app/pages/check_out/page.dart';
import 'package:parking_app/pages/home/cubit/home_cubit.dart';

import '../check_in/page.dart';
import 'models/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Route<HomePage> get route =>
      MaterialPageRoute(builder: (_) => const HomePage());

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Image.asset('assets/images/logo.png', height: 60),
            ),
            drawer: const Drawer(),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Search by Vehicle Number',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.only(top: 16),
                      itemCount: state.items.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 5 / 3,
                      ),
                      itemBuilder: (context, index) {
                        final item = state.items[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: item.color ?? Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200]!,
                                blurRadius: 8,
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          child: InkWell(
                            onTap: () => _onSelection(item),
                            child: Center(
                              child: Text(
                                item.label,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSelection(GridItem item) async {
    if (item.id == GridItems.checkIn) {
      Navigator.of(context).push(CheckInPage.route);
    } else if (item.id == GridItems.checkOut) {
      Navigator.of(context).push(CheckOutPage.route);
    } else {}
  }
}
