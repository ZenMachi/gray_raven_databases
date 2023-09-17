import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ElementBadge extends StatelessWidget {
  const ElementBadge({super.key, required this.element, required this.mainAxisAlignment});
  final String element;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100.w,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.all(Radius.circular(24))
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Image.asset(
            getElementType(element),
            height: 30,
            width: 30,),
          SizedBox(width: 2.w,),
          Text(element,
            style: Theme.of(context).textTheme.bodyMedium?.apply(color: Theme.of(context).colorScheme.onTertiary),)
        ],
      ),
    );
  }
}

String getElementType(String element) {
  if (element == 'Physical') {
    return 'images/elements/physical_icon_white.png';
  } else if (element == 'Lightning') {
    return 'images/elements/lightning_icon_white.png';
  } else if (element == 'Fire') {
  return 'images/elements/fire_icon_white.png';
  } else {
    return 'Not Defined / Wrong :<';
  }
}
