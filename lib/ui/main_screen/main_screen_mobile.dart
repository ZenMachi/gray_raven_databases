import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gray_raven_databases/data/local/data_dummy.dart';
import 'package:gray_raven_databases/ui/detail_screen.dart';
import 'package:gray_raven_databases/ui/widgets/card_image.dart';
import 'package:gray_raven_databases/utils/utils.dart';
import 'package:sizer/sizer.dart';

class MainScreenMobile extends StatelessWidget {
  const MainScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 14, right: 14, top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('GRAY RAVEN\nDATABASES', style: Theme.of(context).textTheme.displaySmall,),
              SizedBox(height: 4.h,),
              Text('Characters', style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 2.h,),
              SizedBox(
                width: 100.w,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  runSpacing: 24,
                  children: characterList.map((item) =>
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>
                              DetailScreen(chara: item)
                          ));
                        },
                        child: CardImage(imagePath: item.image, width: 150, height: 150,))).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
