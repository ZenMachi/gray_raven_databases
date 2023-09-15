import 'package:flutter/material.dart';

class CharaName extends StatefulWidget {
  const CharaName({super.key, required this.name, required this.variant});
  final String name;
  final String variant;

  @override
  State<CharaName> createState() => _CharaNameState();
}

class _CharaNameState extends State<CharaName> {
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
            margin: EdgeInsets.all(8),
            child: Text(widget.name,
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
            padding: EdgeInsets.all(8),
            child: Text(widget.variant,
              style: Theme.of(context).textTheme.titleLarge?.apply(color: Theme.of(context).colorScheme.onPrimaryContainer),),
          ),
        ),
      ],
    );
  }
}
