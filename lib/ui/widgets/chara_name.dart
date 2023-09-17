import 'package:flutter/material.dart';

class CharaName extends StatelessWidget {
  const CharaName({super.key, required this.name, required this.variant, required this.padding});
  final String name;
  final String variant;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: Container(
            padding: EdgeInsets.all(padding),
            child: Text(name,
              style: Theme.of(context).textTheme.titleLarge?.apply(color: Theme.of(context).colorScheme.onPrimaryContainer),),
          ),
        ),
        SizedBox(width: 12,),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: Container(
            padding: EdgeInsets.all(padding),
            child: Text(variant,
              style: Theme.of(context).textTheme.titleLarge?.apply(color: Theme.of(context).colorScheme.onPrimaryContainer),),
          ),
        ),
      ],
    );
  }
}
