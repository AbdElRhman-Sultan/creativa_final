import 'package:creativa_second/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class ProfilePage extends StatelessWidget {
  var anything = Get.put(UserController());
    ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile",style: GoogleFonts.badScript(fontSize:30,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        shrinkWrap: true,

        children: [
          Container(
            child: Image.asset("images/pngegg (10).png",color: Colors.indigo),
            ),
          SizedBox(height: 15,),
          Container(
            height: 40,
            color: Colors.indigo,
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.white,),
                Text("Hallo :  ${anything.name.toString()}",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 15,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 40,
            color: Colors.indigo,
            child: Row(
              children: [
                Icon(Icons.email, color: Colors.white,),
                Text("email :   ${anything.email.toString()}",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 15,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 40,
            color: Colors.indigo,
            child: Row(
              children: [
                Icon(Icons.phone, color: Colors.white,),
                Text("Phone Number:  ${anything.phone.toString()}",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

