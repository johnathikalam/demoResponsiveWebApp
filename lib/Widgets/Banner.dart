import 'package:flutter/material.dart';

class DisplayBanner extends StatelessWidget {
  const DisplayBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth>1100){
            return DesktopBanner();
          }
          else if(constraints.maxWidth<=1100 && constraints.maxWidth>800){
            return TabletBanner();
          }
          else {
            return MobileBanner();
          }
        }
    );
  }
}

class DesktopBanner extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height:500,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white, Colors.grey.withOpacity(.3)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_sharp)),
          Image(image: AssetImage("assets/banner_images/chair.png"),width: 350,),
          Column(),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp)),
        ],
      ),
    );
  }
}
class TabletBanner extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}
class MobileBanner extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}

