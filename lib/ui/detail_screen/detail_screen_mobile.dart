import 'package:flutter/material.dart';
import 'package:gray_raven_databases/data/local/data_dummy.dart';
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
          child: Container(
            padding: EdgeInsets.only(left: 14, right: 14, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CharaName(name: widget.chara.name, variant: widget.chara.variant),
                SizedBox(height: 14,),
                Stack(
                    children: [
                      CardImage(imagePath: widget.chara.image, width: 100.w, height: 40.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 1,),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
                              child: ElementBadge(element: widget.chara.element)),
                        ],
                      )
                    ]
                ),
                SizedBox(height: 14,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: widget.chara.gallery.map((item) =>
                          CardImage(imagePath: item, width: 76, height: 76)
                      ).toList(),
                    ),
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
