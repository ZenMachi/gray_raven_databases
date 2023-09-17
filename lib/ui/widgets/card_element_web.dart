import 'package:flutter/material.dart';
import 'package:gray_raven_databases/ui/widgets/element_badge.dart';

class CardElement extends StatelessWidget {
  const CardElement({super.key, required this.width, required this.element, this.crossAxisAlignment = CrossAxisAlignment.start});
  final double width;
  final String element;
  final CrossAxisAlignment crossAxisAlignment;

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
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Text('Element',
              style: Theme.of(context).textTheme.titleLarge?.apply(color: Theme.of(context).colorScheme.onTertiaryContainer),),
            SizedBox(height: 4,),
            ElementBadge(element: element, mainAxisAlignment: MainAxisAlignment.center,)
          ],
        ),
      ),
    );
  }
}
