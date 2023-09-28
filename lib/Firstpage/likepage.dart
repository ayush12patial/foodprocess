import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class likepage extends StatefulWidget {
  const likepage({super.key});

  @override
  State<likepage> createState() => _likepageState();
}


class _likepageState extends State<likepage> {



  List<String> imgdata = [];
    List<String> textdata = [];

    List<String> LLimg =[];
    List<String> LLtext = [];



  Future<void> likedItems() async{

    Fluttertoast.showToast(msg: 'function is working');

    SharedPreferences info = await SharedPreferences.getInstance();

    imgdata =  info.getStringList('Likeditem')!;

    print(imgdata.toString() + 'Ayu');

    textdata = info.getStringList('Liketext')!;


    setState(() {
      
    });


  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    likedItems();

  }

  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
           )
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 2),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFE724C),
                  borderRadius: BorderRadius.circular(10)
            ),
              child: TextButton(onPressed: (){
                Navigator.pushNamed(context, "10");
              },child: Text('GO TO CART', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20
              ),))),
        ))
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(

            child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(

                  padding: const EdgeInsets.only( top: 16,left: 26),
                  child: Text('Liked Item',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  )),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 26, right: 26,bottom: 10),
                  child: Divider(
                    height: 1,
                    thickness: 3,
                    color: Color(0xFFEEEEEE),
                  ),
                ),

                Container(

                  height: 700,

                  width: MediaQuery.of(context).size.width,

                  child: ListView.builder(
                             itemCount: imgdata.length,
                        itemBuilder: (context, index) {
                       return Column(
                         children: [
                             GestureDetector(
                               onTap: (){
                                 Navigator.pushNamed(context, '5');
                               },
                               child:
                               Padding(
                                  padding: const EdgeInsets.only(left:16, right: 16),
                                      child: Container(
                                        height: 200,
                                         width: MediaQuery.of(context).size.width,

                                        child: Row(
                            children: [

                          Container(
                                height: 120,
                                width: 120,
                                child: Image.asset(imgdata[index])


                          ),
                               SizedBox(width: 24,),



                            Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                                height: 124,
                                width: 180,


                                alignment: Alignment.centerLeft,

                                child: Column(

                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(textdata[index]
                                      , style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18
                                      ),),
                                    SizedBox(height: 20),



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


                                  ],


                                ),
                            ),
                          )
                                ],
                          ),
                            ),
                               ),
                             ),
                           Padding(
                             padding: const EdgeInsets.only(bottom: 15),
                             child: Container(
                               decoration: BoxDecoration(
                                 color: Color(0xffFE724C),
                                 borderRadius: BorderRadius.circular(12)
                               ),
                               child: TextButton(onPressed: () async{
                                Fluttertoast.showToast(msg: 'Add to cart');

                                SharedPreferences prefs = await SharedPreferences.getInstance();

                                LLimg.add(imgdata[index]);
                                LLtext.add(textdata[index]);

                                prefs.setStringList('LLimg', LLimg);

                                prefs.setStringList('LLtext', LLtext);



                               },
                                child: Text('Add to cart',style: TextStyle(
                                  color: Colors.white
                                ),),
                               )
                             ),
                           ),



                           Padding(
                             padding: const EdgeInsets.only(left: 16, right: 16,bottom: 10),
                             child: Divider(
                               height: 1,
                               thickness: 3,
                               color: Color(0xFFEEEEEE),
                             ),
                           ),
                         ],
                   );
                       }),
                ),

              ],
            )
              ),
         ),
       )
     );
  }
}
