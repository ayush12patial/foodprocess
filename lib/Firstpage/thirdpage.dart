import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class thirdpage extends StatefulWidget {
  const thirdpage({super.key});

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override

  List<String> cuisineName=['Burger','Chicken','Pizza','Beer','Cake','Fruit'];

  List<String> gridName= ['Naked Jackfruit Burrito Bowl - R','NY chicken Roll - Large/Spicy','Kochchi Prawn Spaghetti - extra cream','Double Chicken & Cheese Fiesta - Pizza - L'];

  List<String>  nearby=['Egg Benedict with Capsicum','Kashmiri Biryani and Kacchi ','NY Chicken Roll - Large'];

  List<String> svgPaths = ['assets/burger2.svg', 'assets/chicken.svg','assets/dipizza.svg', 'assets/beer.svg','assets/cake.svg','assets/fruit.svg'];

  List<String> imgPath = ['assets/egg2.png','assets/kashmiri.png','assets/ny.png'];

  List<String>  gridPath = ['assets/pizza2.png','assets/egg2.png','assets/kashmiri.png','assets/ny.png'];

  List<String>  listlikeditems = ['0','0','0'];

  List<String>  likedSvg = [];

  List<String>  likedtext = [];

  List<String>  gridlikeditem = ['0','0','0','0'];
  String currentpage = '';

  
  List<Color> colors = [Colors.pinkAccent, Colors.pinkAccent,Colors.pinkAccent];

  List heartSvg=['assets/heartul.svg','assets/heartul.svg','assets/heartul.svg'];

  List<Color> heartcolor = [Colors.black,Colors.black,Colors.black] ;// null type ka variable null ho skta he yee

  List gridSvg = ['assets/heartul.svg','assets/heartul.svg','assets/heartul.svg','assets/heartul.svg'];

  List<Color> gridcolor = [Colors.black,Colors.black,Colors.black,Colors.black];



  @override
  void initState() {

    super.initState();
    loadList();
    lodlist2();
  }

  void loadList() async{

    SharedPreferences data =  await SharedPreferences.getInstance() ;


     likedtext = data.getStringList('Liketext')!;


    likedSvg = data.getStringList('Likeditem')!;

    listlikeditems = data.getStringList('listliked')!;


    for(int i=0;i<likedtext.length;i++) {
      int indexOf = nearby.indexOf(likedSvg[i]);
      Fluttertoast.showToast(msg: indexOf.toString());
      heartcolor[indexOf] = Colors.pinkAccent;
    }

    setState(() {

    });
  }

  void lodlist2 () async{

    SharedPreferences infos =  await SharedPreferences.getInstance();

    gridlikeditem = infos.getStringList('gridlikeditem')!;

    print(gridlikeditem.toString() + 'ayush');

    setState(() {


    });

  }


  Widget build(BuildContext context) {
      return WillPopScope(
        onWillPop: () async{
        final shouldPop = await showDialog<bool>(

          context: context,
          builder: (context)
          {
            return AlertDialog(
              title: const Text('Do you want to exit an app'),
              actionsAlignment: MainAxisAlignment.spaceEvenly,
              actions: [
                Container(
                     decoration: BoxDecoration(
                       color: Colors.black
                     ),
                  child: TextButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: const Text('Yes'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                    child: const Text('No'),
                  ),
                ),
              ],
            );
          },
        );
        return shouldPop!;

        },
        child: Scaffold(
           bottomNavigationBar: Container(
             height: 60,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              )

            ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [

               SvgPicture.asset('assets/house.fill.svg'),

               SvgPicture.asset('assets/tag.svg'),

               Container

                 (
                 padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Color(0xffFE724C),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                   child: SvgPicture.asset('assets/cart.fill.svg')),

               GestureDetector(
                 onTap: (){
                   Navigator.pushNamed(context, "9");
                 },
                   child: SvgPicture.asset('assets/www.svg')),

               GestureDetector(
                 onTap: () {
                   Container(
                       padding: EdgeInsets.all(12.0),
                   decoration: BoxDecoration(
                   color: Color(0xffFE724C),
                   borderRadius: BorderRadius.all(Radius.circular(10))
                   ));

                   Navigator.pushNamed(context, '7');
                 },

                   child: SvgPicture.asset('assets/person.svg'))
             ],
           ),
          ),
               body: SafeArea(
                  child: SingleChildScrollView(
                   child: Container(



                 child: Column(


                children: [
                  SizedBox(
                    height: 20.5,
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),

                    child: Row(
                      children: [

                        SvgPicture.asset('assets/location.svg'),

                        SizedBox(width: 10,),


                        Text('1901 Thornridge Cir. Shiloh...',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                        ) ),

                        SizedBox(width: 10,),

                        SvgPicture.asset('assets/downarrow.svg')
                      ],
                    ),
                  ),

                  SizedBox(height: 20),



                       Padding(
                         padding: const EdgeInsets.only(left: 16,right: 16),
                         child: Container(


                           decoration: BoxDecoration(
                              color: Color(0xffEEEEEE),
                              borderRadius:  BorderRadius.all(Radius.circular(10.0)),
                            ),



                            height: 54,
                            width: 358,
                            child: TextField(
                                cursorColor: Colors.black,
                               decoration: InputDecoration(

                              prefixIcon:

                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Icon(

                                  Icons.search,
                                    color: Colors.black,


                            ),
                                ),

                            border: InputBorder.none,

                            hintText: 'Food, groceries, drinks, etc.',contentPadding: EdgeInsets.only(top: 17),hintStyle: TextStyle(
                                 color: Color(0xFF323643)
                               ),




                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 5,right: 5),
                              child: GestureDetector(
                                onTap: (){
                                  Fluttertoast.showToast(msg: 'helo');
                                },
                                child: Container(

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  height: 38,
                                  width: 34,
                                  child: (
                                   Icon(Icons.menu,color: Colors.orange,)
                                  ),
                                ),
                              ),
                            )
                          ),
                      ),



                    ),
                       ),

                  SizedBox(
                    height: 16,
                  ),



                  Container(
                    padding: EdgeInsets.only(left: 5),
                    height: 128,
                    width: MediaQuery.of(context).size.width,


                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 16),
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,

                          itemBuilder:(BuildContext context, int index ){



                        return  Column(children: [

                                        Container(
                                          height: 90,
                                          decoration: BoxDecoration(
                                              color: Color(0xffEEEEEE),
                                              borderRadius: BorderRadius.circular(10)),

                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                           child: SvgPicture.asset(svgPaths[index], fit: BoxFit.fill, height: 70, width: 70),
                                          ),
                                        ),
                                    SizedBox(
                                      height: 8,
                                    ),

                                    Container(
                                      child: Row(

                                        children: [
                                          Text(cuisineName[index], style: TextStyle(

                                            fontWeight: FontWeight.w400,

                                            fontSize: 14,

                                          ),)
                                        ],
                                      ),
                                    )
                              ],
                        );


                      } , separatorBuilder:(BuildContext context, int index){

                        return Container(
                          child: Row(

                            children: [
                              SizedBox(width: 8)

                            ],

                          ),

                        );


                      } , itemCount: svgPaths.length),
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),



                  Container(

                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFEBEBEB),

                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                      child: Row(
                        children: [

                          Text('Nearby hotels', style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                          )),

                          Spacer(),

                          Text('View All', style: TextStyle(

                          )),
                          SizedBox(width: 4,),
                          SvgPicture.asset('assets/ayu.svg'),
                        ],
                      )
                  ),

                  SizedBox(
                    height: 6,
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 16),

                    child: Row(
                      children: [
                        Text('Exclusive restaurants deals near you',style: TextStyle(
                          color: Color(0xFF8C9099),
                        )),
                      ],
                    ),


                  ),

                  SizedBox(
                    height: 15,
                  ),


                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    height: 250,
                    width: MediaQuery.of(context).size.width,


                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,


                        itemBuilder:(BuildContext context, int index ){

                          return  Container(

                            height: 200,

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [

                                Container(

                                  height: 150,
                                  width: 220,

                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child:

                                  Stack(

                                      children: [ GestureDetector(onTap: () async{

                                        SharedPreferences info = await SharedPreferences.getInstance();

                                        currentpage = imgPath[index] ;

                                        info.setString('setitem', currentpage);

                                        Navigator.pushNamed(context, '4',arguments: {"img":imgPath[index],"text": nearby[index]});


                                      },

                                          child: Image.asset(imgPath[index], height: 150,
                                            width: 220,
                                            fit: BoxFit.fill,)),

                                        Container(
                                          alignment: Alignment.topLeft,

                                          child: ElevatedButton(

                                            child: SvgPicture.asset(heartSvg[index], color: (listlikeditems[index]=='1'?Colors.pinkAccent:Colors.black)),

                                            onPressed: () async{
                                              if(heartcolor[index]==Colors.black)
                                              {
                                                heartcolor[index]=Colors.pinkAccent;


                                                listlikeditems[index] = '1';


                                                likedSvg.add(imgPath[index]);

                                                likedtext.add(nearby[index]);




                                                setState(() {
                                                });




                                                //print(finalList.toString())

                                              }

                                              else
                                              {
                                                heartcolor[index]=Colors.black;

                                                setState((){
                                                });
                                                likedSvg.removeWhere((element) => element==imgPath[index]);

                                                likedtext.removeWhere((element) => element==nearby[index]);

                                                listlikeditems[index] = '0';



                                                Fluttertoast.showToast(msg: likedtext.toString());

                                              }

                                              //Fluttertoast.showToast(msg: 'Like');
                                              SharedPreferences data =  await SharedPreferences.getInstance() ;

                                              data.setStringList('Liketext', likedtext);

                                              print(likedtext.toString() + 'AYU');

                                              data.setStringList('Likeditem', likedSvg);
                                              Fluttertoast.showToast(msg: listlikeditems.toString());
                                              data.setStringList('listliked', listlikeditems);

                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xFFF1F1F1),
                                              shape: CircleBorder(),

                                            ),),
                                        )

                                      ]
                                  ),



                                ),

                                SizedBox(
                                    height: 12
                                ),



                                   Container(


                                     child: Text(nearby[index],style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,

                                     ),),
                                   ),



                                SizedBox(height: 10,),




                                Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(



                                    children: [

                                      SvgPicture.asset('assets/A.svg'),
                                      SizedBox(width: 4,),
                                      Text('2.2 away form this',style: TextStyle(
                                        color: Colors.grey,
                                      ),),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 8),

                                Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset('assets/star.svg'),
                                      SizedBox(width: 4,),
                                      Text('4.9 (1.1k+ Reviwes)',style: TextStyle(
                                        color: Colors.grey,

                                      ),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );

                        } , separatorBuilder:

                        (BuildContext context, int index)
                    {

                      return Container(
                        child: Column(

                          children: [
                            SizedBox(width: 10),

                          ],

                        ),

                      );

                    } , itemCount: nearby.length),
                  ),

                  Container(

                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFEBEBEB),

                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Container(
                      padding: EdgeInsets.only(left: 16,right: 16),
                      child: Row(
                        children: [

                          Text('Recomended you', style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                          )),

                          Spacer(),

                          Text('View All', style: TextStyle(

                          )),
                          SizedBox(width: 4,),
                          SvgPicture.asset('assets/ayu.svg'),
                        ],
                      )
                  ),

                  SizedBox(
                    height: 6,
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 16),

                    child: Row(
                      children: [
                        Text('Explore best items and enjoy your meal',style: TextStyle(
                          color: Color(0xFF8C9099),
                        )),
                      ],
                    ),


                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 15),

                    child: Container(

                      height: 300,
                      child: GridView.builder(
                          itemCount: gridPath.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 15,
                            mainAxisExtent: 309,

                          ),
                          itemBuilder: (context, index){

                            return  Container(

                              child: Column(

                                children: [

                                  Stack(
                                    children: [ Image.asset(gridPath[index], height: 152, width: 170, fit: BoxFit.fill,),

                                      Container(

                                        alignment: Alignment.topLeft,
                                        child: ElevatedButton(

                                          child: SvgPicture.asset(gridSvg[index], color: (gridlikeditem[index]=='0')?gridcolor[index]:Colors.pinkAccent),

                                          onPressed: () async{
                                            if(gridcolor[index] == Colors.black){
                                              gridcolor[index] = Colors.pinkAccent;

                                              gridlikeditem[index] = '1';

                                              setState(() {

                                              });
                                            }
                                            else{
                                              gridcolor[index] = Colors.black;
                                              gridlikeditem[index] = '0';
                                              setState(() {

                                              });
                                            }
                                            SharedPreferences infos = await  SharedPreferences.getInstance();

                                            infos.setStringList('gridlikeditem', gridlikeditem);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFF1F1F1),
                                            shape: CircleBorder(),
                                          ),),
                                      ),
                                    ] ,
                                  ),


                                  SizedBox(
                                      height: 12
                                  ),

                                  Text(gridName[index],style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),),

                                  SizedBox(height: 10,),

                                  Row(
                                    children: [
                                      SvgPicture.asset('assets/A.svg'),
                                      SizedBox(width: 4,),
                                      Text('2.2 away form this',style: TextStyle(
                                          color: Colors.grey
                                      ),),

                                    ],
                                  ),
                                  SizedBox(height: 8,),

                                  Row(
                                    children: [
                                      SvgPicture.asset('assets/star.svg'),
                                      SizedBox(width: 4,),
                                      Text('4.9 (1.1k+ Reviwes)',style: TextStyle(
                                          color: Colors.grey
                                      )),
                                    ],
                                  ),

                                  SizedBox(height: 7,),

                                  Stack(
                                      alignment: Alignment.center,
                                      children: [ Row(
                                        children: [


                                          Text('20.0',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22,
                                              color: Color(0xFFFE724C),
                                            ),),

                                          SizedBox(
                                            width: 8,
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

                                        Container(
                                            alignment: Alignment.bottomRight,

                                            child: ElevatedButton(onPressed: (){},
                                              child: Icon(Icons.add, color: Colors.black,),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:  Color(0xFFF1F1F1),
                                                  shape: CircleBorder()
                                              ),)
                                        )
                                      ]
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  )

                ],

              ),

            ),
          ),
        ),

    ),
      );
  }
}