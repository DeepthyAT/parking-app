import 'package:flutter/material.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key, this.title});

  final String? title;

  static Route<CheckOutPage> get route =>
      MaterialPageRoute(builder: (_) => const CheckOutPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Out'),
      ),
      body: const Placeholder(),
    );
  }
}
