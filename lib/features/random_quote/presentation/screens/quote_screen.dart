import 'package:flutter/material.dart';
import 'package:project/config/routes/app_routes.dart';
import 'package:project/core/utils/assets_manger.dart';
import 'package:project/core/utils/media_query_values.dart';

import '../../../../core/utils/constants.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({Key? key}) : super(key: key);

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
              onTap: () {
                Constants.showToast(msg: 'Hello world');
                Constants.showErrorDialog(
                    context: context, msg: 'Error Happened');
                Navigator.pushNamed(context, Routes.favoriteRoute);
              },
              child: Image.asset(
                ImgAssets.logo,
                width: context.width,
              ))),
    );
  }
}
