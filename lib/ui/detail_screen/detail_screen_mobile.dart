import 'package:flutter/material.dart';
import 'package:gray_raven_databases/data/local/data_dummy.dart';
import 'package:gray_raven_databases/ui/widgets/button_favorite.dart';
import 'package:gray_raven_databases/ui/widgets/card_image.dart';
import 'package:gray_raven_databases/ui/widgets/card_information.dart';
import 'package:gray_raven_databases/ui/widgets/chara_name.dart';
import 'package:gray_raven_databases/ui/widgets/element_badge.dart';
import 'package:sizer/sizer.dart';


class DetailScreenMobile extends StatefulWidget {
  const DetailScreenMobile({super.key, required this.chara});
  final CharacterList chara;

  @override
  State<DetailScreenMobile> createState() => _DetailScreenMobileState();
}

class _DetailScreenMobileState extends State<DetailScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 14, right: 14, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CharaName(name: widget.chara.name, variant: widget.chara.variant, padding: 8,),
                SizedBox(height: 14,),
                Stack(
                    children: [
                      CardImage(imagePath: widget.chara.image, width: 100.w, height: 40.h),
                      Container(
                        height: 40.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(height: 1,),
                                Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
                                    child: ElementBadge(element: widget.chara.element, mainAxisAlignment: MainAxisAlignment.center, )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(height: 1,),
                                Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 2.w,),
                                    child: FavoriteButton(name: widget.chara.name, buttonSize: 36)),
                              ],
                            ),
                          ],
                        ),
                      )
                    ]
                ),
                SizedBox(height: 14,),
                SizedBox(
                  width: 100.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: widget.chara.gallery.map((item) =>
                        CardImage(imagePath: item, width: 76.sp, height: 76.sp)
                    ).toList(),
                  ),
                ),
                SizedBox(height: 14,),
                CardInformation(info: widget.chara.info, width: 100.w,)
              ],
            ),
          )
      ),
    );
  }
}
