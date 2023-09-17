import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key, required this.name, required this.buttonSize});
  final String name;
  final double buttonSize;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      setState(() {
        isFavorite = !isFavorite;
        showSnackbar();
      });
    },
      icon:  Icon(
        isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
        color: isFavorite ? Colors.red : Colors.white,
        size: widget.buttonSize,),
    );
  }

  showSnackbar () {
    final snackBar = SnackBar(
        content: Text(
            isFavorite ? 'Yay ${widget.name} liked :)' : 'nuff :('
        )
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
