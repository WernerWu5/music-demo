import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:distribution_mall_flutter/assets.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  final String? saleItemId;
  const SplashPage({super.key, @pathParam this.saleItemId});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(milliseconds: 1000), () {
      // appRouter.replace(
      //     EPstorage.isLogin() ? const HomeRoute() : const LoginRoute());
      appRouter.replace(const HomeRoute());
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Text('客思测试题'),
      ),
    );
  }
}
