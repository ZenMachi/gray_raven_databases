import 'package:flutter/material.dart';

class CardImage extends StatefulWidget {
  const CardImage({super.key, required this.imagePath, required this.width, required this.height,});
  final String imagePath;
  final double width;
  final double height;

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
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
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              widget.imagePath,
              alignment: Alignment.bottomCenter,
              fit: BoxFit.contain,
            )
        ),
      ),
    );
  }
}
