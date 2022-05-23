import 'package:flutter/material.dart';

import 'network_aware_widget.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;

  const AppScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NetworkAwareWidget(
          onlineChild: child,
          offlineChild: const Center(
            child: Text(
              "I am offLine",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
          )),
    );
  }
}
