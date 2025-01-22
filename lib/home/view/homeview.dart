import 'package:flutter/material.dart';

import '../../signin/model/signin_model.dart';

class Homeview extends StatelessWidget {

  const Homeview({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text('hi')
        // Text(data.data?.firstName ?? ''),
        // Text(data.data?.lastName ?? ''),
        // Text(data.data?.email ?? ''),
        // Text(data.data?.mobile ?? '')
      ],
    ));
  }
}
