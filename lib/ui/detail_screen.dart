import 'package:flutter/material.dart';
import 'package:gray_raven_databases/data/local/data_dummy.dart';
import 'package:gray_raven_databases/ui/detail_screen/detail_screen_mobile.dart';
import 'package:gray_raven_databases/ui/detail_screen/detail_screen_web.dart';


class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.chara});
  final CharacterList chara;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool showAppbar = false;

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 1024) {
      setState(() {
        showAppbar = true;
      });
    } else {
      setState(() {
        showAppbar = false;
      });
    }
    return Scaffold(
      appBar: showAppbar ? AppBar(title: Text('Details'),) : null,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: LayoutBuilder (
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 1024) {
              return DetailScreenMobile(chara: widget.chara);
            } else {
              return DetailScreenWeb(chara: widget.chara);
            }
          }
      )
    );
  }
}
