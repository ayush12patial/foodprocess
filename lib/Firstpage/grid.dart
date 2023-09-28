import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';


class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}



class _gridState extends State<grid> {

  void initState(){
    function();

  }
  var Googleuser;

  void function() async{

    SharedPreferences data =  await SharedPreferences.getInstance();

    setState(() {
      Googleuser = data.getString('name');
      print(Googleuser + ' AYUSH');// Print the user's name
    });

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        body: Container(
                 // decoration: BoxDecoration(
                 //   image: DecorationImage(
                 // image: AssetImage("assets/liquid.jpg"),
                 // fit: BoxFit.cover,
                 //   ),
                 // ),
             child: Center(

            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Column(
                children: [
                  SvgPicture.asset('assets/accounts.svg', height: 100,width: 100,),

                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Text(Googleuser.toString(),style: TextStyle(
                            fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),),
                      ),

                  Padding(
                    padding: const EdgeInsets.only(top:250),
                    child: ElevatedButton(
                        onPressed: (){
                          SignoutwithGoogle();
                          Fluttertoast.showToast(msg: 'LOG OUT');
                          Navigator.pushNamed(context, '2');
                      },
                        child:  Text('LOG OUT',style: TextStyle(
                          color: Color(0xffFE724C)
                        ),),
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.white,
                        fixedSize: Size(300, 50,),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Color(0xffFE724C))
                        ),

                      ),
                    ),
                  )


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }}


Future<void> SignoutwithGoogle() async{

  // Trigger the authentication flow

  final GoogleSignInAccount? googleUser = await GoogleSignIn().signOut();

  Fluttertoast.showToast(msg: 'Logout');

}

