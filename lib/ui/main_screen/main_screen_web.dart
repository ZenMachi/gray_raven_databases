import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../data/local/data_dummy.dart';
import '../detail_screen.dart';
import '../widgets/card_image.dart';

class MainScreenWeb extends StatelessWidget {
  const MainScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: 100.w,
          padding: EdgeInsets.all(48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('GRAY RAVEN DATABASES', style: Theme.of(context).textTheme.displayMedium,),
              SizedBox(height: 48,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Characters', style: Theme.of(context).textTheme.headlineLarge),
                  SizedBox(height: 48,),
                  SizedBox(
                    width: 100.w,
                    child: Wrap(
                      alignment: WrapAlignment.spaceAround,
                      runSpacing: 48,
                      spacing: 48,
                      children: characterList.map((item) =>
                          InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                    DetailScreen(chara: item)
                                ));
                              },
                              child: CardImage(imagePath: item.image, width: 300, height: 300,))).toList(),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}