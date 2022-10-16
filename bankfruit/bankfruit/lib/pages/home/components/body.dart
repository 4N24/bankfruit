import 'package:flutter/material.dart';
import 'package:bankfruit/pages/home/components/topbar.dart';
import 'package:bankfruit/pages/home/components/mapScreen.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size sizew = MediaQuery.of(context).size;
    
    // it enable scrolling on small device
    return Stack(children: <Widget>[
      //  Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // verticalDirection: VerticalDirection.down,
      // children: <Widget>[
      MapScreen(key: context.widget.key, size: sizew),
      TitleWithSearch(key: context.widget.key, size: sizew),
      
          //TitleWithMoreBtn(title: "Recomended", press: () {}),
          //  RecomendsPlants(),
          //    TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          // FeaturedPlants(),
          //    SizedBox(height: kDefaultPadding),
      // ],
      // ),
    ] 
    );
  }
}
