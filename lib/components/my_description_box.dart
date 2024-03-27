import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(8),
        ),
      padding: const EdgeInsets.all(25.00),
      margin: const EdgeInsets.only(right: 25.0, left: 25.0,  bottom: 25.0),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("S/10.00", style: myPrimaryTextStyle),
              Text("Envio Gratis" , style: mySecondaryTextStyle),
            ],
          ),
          Column(
            children: [
              Text("15-30 min", style: myPrimaryTextStyle),
              Text("Tiempo de Envío", style: mySecondaryTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
