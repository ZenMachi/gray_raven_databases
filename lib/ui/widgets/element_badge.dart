import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ElementBadge extends StatefulWidget {
  const ElementBadge({super.key, required this.element});
  final String element;

  @override
  State<ElementBadge> createState() => _ElementBadgeState();
}

class _ElementBadgeState extends State<ElementBadge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.all(Radius.circular(24))
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset(
            getElementType(widget.element),
            height: 30,
            width: 30,),
          SizedBox(width: 2.w,),
          Text(widget.element,
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
    return 'Meong';
  } else {
    return 'Not Defined / Wrong :<';
  }
}
