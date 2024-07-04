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
      height:500,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white, Colors.grey.withOpacity(.3)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
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

