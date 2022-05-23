import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'network_status_service.dart';

class NetworkAwareWidget extends StatelessWidget {
  final Widget onlineChild;
  final Widget offlineChild;

  const NetworkAwareWidget(
      {Key? key, required this.onlineChild, required this.offlineChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NetworkStatus>(builder: (context, data, child) {
      return data == NetworkStatus.Online ? onlineChild : offlineChild;
    });
  }
}
