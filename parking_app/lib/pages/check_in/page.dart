import 'package:flutter/material.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({super.key, this.title});

  final String? title;

  static Route<CheckInPage> get route =>
      MaterialPageRoute(builder: (_) => const CheckInPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'In'),
      ),
      body: const Placeholder(),
    );
  }
}
