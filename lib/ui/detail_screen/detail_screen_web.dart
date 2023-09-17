import 'package:flutter/material.dart';
import 'package:gray_raven_databases/data/local/data_dummy.dart';
import 'package:gray_raven_databases/ui/widgets/button_favorite.dart';
import 'package:gray_raven_databases/ui/widgets/card_element_web.dart';
import 'package:gray_raven_databases/ui/widgets/card_image.dart';
import 'package:gray_raven_databases/ui/widgets/card_information.dart';
import 'package:gray_raven_databases/ui/widgets/chara_name.dart';
import 'package:sizer/sizer.dart';

class DetailScreenWeb extends StatefulWidget {
  const DetailScreenWeb({super.key, required this.chara});
  final CharacterList chara;

  @override
  State<DetailScreenWeb> createState() => _DetailScreenWebState();
}

class _DetailScreenWebState extends State<DetailScreenWeb> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: 100.w,
          padding: EdgeInsets.all(48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('GRAY RAVEN DATABASES', style: Theme.of(context).textTheme.displayMedium?.apply(color: Theme.of(context).colorScheme.onSurface),),
              SizedBox(height: 4.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 30.w,
                      child: CharaName(name: widget.chara.name, variant: widget.chara.variant, padding: 1.w,)
                  ),
                  SizedBox(width: 30.w,)
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CardImage(imagePath: widget.chara.image, width: 30.w, height: 40.h),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FavoriteButton(name: '${widget.chara.name} ${widget.chara.variant}', buttonSize: 36),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 40.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CardInformation(info: widget.chara.info, width: 30.w, crossAxisAlignment: CrossAxisAlignment.center,),
                        CardElement(width: 30.w, element: widget.chara.element, crossAxisAlignment: CrossAxisAlignment.center,)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 30.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: widget.chara.gallery.map((item) =>
                          CardImage(imagePath: item, width: 24.sp, height: 24.sp)
                      ).toList(),
                    ),
                  ),
                  SizedBox(width: 30.w,)
                ],
              ),

            ],
          ),
        )
    );
  }
}
