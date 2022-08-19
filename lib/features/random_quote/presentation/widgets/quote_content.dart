import 'package:flutter/material.dart';
import 'package:project/core/utils/app_colors.dart';

class QuoteContent extends StatelessWidget {
  const QuoteContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.primary, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Text(
              textAlign: TextAlign.center,
              'Hello This My Name Hota Hello This My Name Hota Hello This My Name Hota',
              style: Theme.of(context).textTheme.bodyMedium),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Text("Mahmoud Abdalla ",
                  style: Theme.of(context).textTheme.bodyMedium)),
        ],
      ),
    );
  }
}
