import 'package:flutter/material.dart';
import 'package:gray_raven_databases/data/local/data_dummy.dart';
import 'package:gray_raven_databases/ui/detail_screen/detail_screen_mobile.dart';
import 'package:gray_raven_databases/ui/detail_screen/detail_screen_web.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.chara});
  final CharacterList chara;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Details'),
      // ),
      body: DetailScreenWeb(chara: chara,)
    );
  }
}
