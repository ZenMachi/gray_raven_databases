import 'package:flutter/material.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({super.key, required this.info, required this.width});
  final String info;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.tertiaryContainer,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
              width: 2
          )
      ),
      child: Container(
        width: width,
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Information',
              style: Theme.of(context).textTheme.titleLarge?.apply(color: Theme.of(context).colorScheme.onTertiaryContainer),),
            SizedBox(height: 4,),
            Text(info,
              style: Theme.of(context).textTheme.bodyMedium?.apply(color: Theme.of(context).colorScheme.onTertiaryContainer),)
          ],
        ),
      ),
    );
  }
}
