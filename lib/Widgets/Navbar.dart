import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Padding(
            padding: const EdgeInsets.only(left:30.0),
            child: Text("Furnish", style:GoogleFonts.raleway(fontSize: 28, fontWeight: FontWeight.w600, color:Colors.black87)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Text('HOME',style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.amber)),
              SizedBox(width:15),
              Text('SHOP',style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15)),
              SizedBox(width:15),
              Text('SOFA',style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15)),
              SizedBox(width:15),
              Text('CABINET',style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15)),
              SizedBox(width:15),
              Text('PAGES',style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15)),
              SizedBox(width:15),
              Text('BLOG',style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15)),
              SizedBox(width:15),
              Text('CONTACT',style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15)),
            ]
          ),
          Row(
            children: [
              Icon(Icons.search, size:26, color: Colors.grey,),
              SizedBox(width:10),
              Icon(Icons.settings_outlined, size:26, color: Colors.grey,),
              SizedBox(width:10),
              Stack(
                children: [
                  Icon(Icons.shopping_cart_outlined, size:26, color: Colors.grey,),
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
      //color: Colors.grey.withOpacity(.1),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.menu_outlined, size: 30,)),
                SizedBox(width:15),
                Text("Furnish", style:GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w600, color:Colors.black87)),
              ],
            ),

            Row(
              children: [
                Container(
                  width:300,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(.2),
                        suffixIcon: Icon(Icons.search_rounded,),
                        hintText: "search",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide:BorderSide.none,
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                  ),
                ),
                SizedBox(width: 14,),
                Icon(Icons.settings_outlined, size:26, color: Colors.grey,),
                SizedBox(width:14),
                Stack(
                  children: [
                    Icon(Icons.shopping_cart_outlined, size:26, color: Colors.grey,),
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
      //color: Colors.grey.withOpacity(.1),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.menu_outlined, size: 26,)),
                SizedBox(width:10),
                Text("Furnish", style:GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w600)),
              ],
            ),

            Row(
              children: [
                Icon(Icons.search_outlined, size:24, color: Colors.grey,),
                SizedBox(width: 12,),
                Icon(Icons.settings_outlined, size:24, color: Colors.grey,),
                SizedBox(width:12),
                Stack(
                  children: [
                    Icon(Icons.shopping_cart_outlined, size:24, color: Colors.grey,),
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