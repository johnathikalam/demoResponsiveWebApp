import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth>1100){
            return DesktopNavbar();
          }
          else if(constraints.maxWidth<=1100 && constraints.maxWidth>800){
            return TabletNavbar();
          }
          else {
            return MobileNavbar();
          }
        }
    );
  }
}

class DesktopNavbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text("Furnish", style:TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Text('HOME',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.amber)),
              SizedBox(width:15),
              Text('SHOP',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
              SizedBox(width:15),
              Text('SOFA',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
              SizedBox(width:15),
              Text('CABINET',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
              SizedBox(width:15),
              Text('PAGES',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
              SizedBox(width:15),
              Text('BLOG',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
              SizedBox(width:15),
              Text('CONTACT',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
            ]
          ),
          Row(
            children: [
              Icon(Icons.search, size:26,),
              SizedBox(width:10),
              Icon(Icons.settings_outlined, size:26,),
              SizedBox(width:10),
              Stack(
                children: [
                  Icon(Icons.shopping_cart_outlined, size:26,),
                  Positioned(
                    bottom: 10,
                      left:10,
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:Text(' 2 ',style: TextStyle(fontSize: 12, color:Colors.white)),
                  ))
              ],),
              SizedBox(width:8),
            ],
          ),
        ]
      ),

    );
  }
}
class TabletNavbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.menu_outlined, size: 30,)),
                SizedBox(width:15),
                Text("Furnish", style:TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
              ],
            ),

            Row(
              children: [
                Container(
                  width:300,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        suffixIcon: Icon(Icons.search_rounded),
                        hintText: "search",
                        border: OutlineInputBorder(
                            borderSide:BorderSide.none,
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                  ),
                ),
                SizedBox(width: 14,),
                Icon(Icons.settings_outlined, size:26,),
                SizedBox(width:14),
                Stack(
                  children: [
                    Icon(Icons.shopping_cart_outlined, size:26,),
                    Positioned(
                        bottom: 10,
                        left:10,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child:Text(' 2 ',style: TextStyle(fontSize: 12, color:Colors.white)),
                        ))
                  ],),
                SizedBox(width:8),
              ],
            ),
          ]
      ),
    );
  }
}
class MobileNavbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.menu_outlined, size: 26,)),
                SizedBox(width:10),
                Text("Furnish", style:TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ],
            ),

            Row(
              children: [
                Icon(Icons.search_outlined, size:24,),
                SizedBox(width: 12,),
                Icon(Icons.settings_outlined, size:24,),
                SizedBox(width:12),
                Stack(
                  children: [
                    Icon(Icons.shopping_cart_outlined, size:24,),
                    Positioned(
                        bottom: 10,
                        left:10,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child:Text(' 2 ',style: TextStyle(fontSize: 10, color:Colors.white)),
                        ))
                  ],),
                SizedBox(width:8),
              ],
            ),
          ]
      ),
    );
  }
}