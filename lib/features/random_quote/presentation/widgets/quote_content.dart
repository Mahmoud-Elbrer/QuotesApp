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
              child: Text("Mahmoud Abdalla",
                  style: Theme.of(context).textTheme.bodyMedium)),
        ],
      ),
    );
  }
}

















class Quote2Content extends StatelessWidget {
  final String? text;
  TextStyle? textStyle ;

  Quote2Content({super.key, this.text, this.textStyle});

  

  // const Quote2Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        //padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(-20, 20),
            color: Colors.red,
            blurRadius: 15,
            spreadRadius: -10,
          ),
          BoxShadow(
            offset: Offset(-20, -20),
            color: Colors.orange,
            blurRadius: 15,
            spreadRadius: -10,
          ),
          BoxShadow(
            offset: Offset(20, -20),
            color: Colors.blue,
            blurRadius: 15,
            spreadRadius: -10,
          ),
          BoxShadow(
            offset: Offset(20, 20),
            color: Colors.deepPurple,
            blurRadius: 15,
            spreadRadius: -10,
          )
        ]),
        child: Container(
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: Center(
              child: Text(
            text!,
            style: textStyle!,
          )),
        ));
  }
}
