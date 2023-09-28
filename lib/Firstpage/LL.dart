import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LL extends StatefulWidget {
  const LL({super.key});



  @override
  State<LL> createState() => _LLState();

}


   List cartimg = [];

   List carttext = [];

   Future<void> getdata() async{

     Fluttertoast.showToast(msg: 'this function is working');

     SharedPreferences prefs = await SharedPreferences.getInstance();

     cartimg =  prefs.getStringList('LLimg')!;

     carttext = prefs.getStringList('LLtext')!;
   }


   @override
   void initState() {
     // TODO: implement initState
     getdata();
   }

class _LLState extends State<LL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
           child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
            Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(

              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(30)
                    ),

                    child: Center(child: Icon(Icons.arrow_back))

                ),
                Spacer(),

                Text('Your Cart',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),),

                Spacer(),


                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(30)
                    ),

                  child:  SvgPicture.asset('assets/meatballs.svg')

                )
              ],
            ),
          ),

          SizedBox(
            height: 24,
          ),

                Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                 child: Text('Order item',style: TextStyle(
                   fontWeight: FontWeight.w700,
                   fontSize: 20,
            )),
          ),

                  Padding(
                    padding: const EdgeInsets.only(top:10,left:16,right: 16),
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: cartimg.length,
                          itemBuilder: (context, index){
                        return Container(
                          child:  Row(
                        children: [
                        Container(
                        color: Colors.green,
                            height: 120,
                            width: 120,
                            child: Image.asset(cartimg[index],fit: BoxFit.fill,)


                        ),
                            SizedBox(width: 24,),

                            Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                            height: 124,
                            width: 180,


                            alignment: Alignment.centerLeft,

                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(carttext[index], style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                            ),),
                            SizedBox(height: 5),

                            Row(
                            children: [
                            SvgPicture.asset('assets/A.svg'),
                            SizedBox(width: 3),
                            Text('2.2 away form this'),

                            ],

                            ),
                            Row(
                            children: [
                            SvgPicture.asset('assets/star.svg'),
                            SizedBox(width: 3),
                            Text('4.9 (1.1k+ Reviwes)'),
                            ],
                            ),
                            SizedBox(height: 5),
                            Row(
                            children: [

                            Text('20.0',
                            style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            ),),

                            SizedBox(
                            width: 6,
                            ),

                            SizedBox(
                            height: 16,
                            ),

                            Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('/per plate', style: TextStyle(

                            color: Colors.grey,
                            fontSize: 12
                            ),),
                            )
                            ],
                            ),
                            SizedBox(height: 6,),

                            Row(

                            children: [
                            Container(
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.orange
                            ),
                            child: SvgPicture.asset('assets/subtract.svg',)),



                            SizedBox(width: 25,),

                            Text('2',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                            ),),

                            SizedBox(width: 25,),

                            Container
                            (
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.orange
                            ),
                            child: Icon(Icons.add,color: Colors.white,)),
                            ],
                            )

                            ],
                            ),
                            ),
                            )
                            ],
                            ),
                        );


                      }),
                    ),
                  )

          ]
          ),

        ),
      ),
      ),
    );
  }
}
