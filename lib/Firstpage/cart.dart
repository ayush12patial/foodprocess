import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {

  @override

  Widget build(BuildContext context) {
    List<String> cuisineName=['Egg Benedict ','Kashmiri Biryani ','NY Chicken Roll - Large',' allo bhujia'];

    List<String>  gridPath = ['assets/pizza2.png','assets/egg2.png','assets/kashmiri.png','assets/ny.png'];
    return Scaffold(
      bottomNavigationBar: Container(
        height: 99,

        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                ),
              color: Colors.white,
            ),

            child: ElevatedButton(onPressed: (){

                Navigator.pushNamed(context, '6');
            },
                 style: ElevatedButton.styleFrom(
                   backgroundColor:  Color(0xffFE724C),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20.0),
            ),
                 ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 60,right: 60,top: 25,bottom: 25),
                  child: Text('Go to checkout - \u0024 40.75',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),),

                )
            ),
          ),
        )

      ),

      body: SafeArea(
        child:SingleChildScrollView(
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
                          child:
                             SvgPicture.asset('assets/meatballs.svg')

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
                    padding: const EdgeInsets.only(left:16, right: 16),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,


                      child: Row(
                        children: [
                          Container(
                              color: Colors.green,
                              height: 120,
                              width: 120,
                              child: Image.asset('assets/eggs.png',fit: BoxFit.fill,)


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
                                  Text('Eggs Benedict', style: TextStyle(
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
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      height: 1,
                      thickness: 2,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),

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
                              child: Image.asset('assets/pizza2.png',fit: BoxFit.fill,)


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
                                  Text('Red n hot pizza', style: TextStyle(
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

                                      Container(
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
                    ),
                  ),








                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      height: 2,
                      thickness: 2,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),

                  SizedBox(
                    height: 24,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Text('Where to deliver?',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),

                        Spacer(),

                        SvgPicture.asset('assets/pencil.svg')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:16, right: 16),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/north.svg'),
                        Text('ul. Bławatków 71, Kędzierzyn-koźle 47-224',style: TextStyle(
                          color: Color(0xFF8C9099),
                        ),)
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 22.5,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, right:16),
                    child: Divider(
                      height: 2,
                      thickness: 2,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),

                  SizedBox(height: 16,),

                  Padding(
                    padding: const EdgeInsets.only(left:16, right: 16),
                    child: Row(
                      children: [
                        Text('Subtotal',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                            color: Color(0xFF323643)
                        )),

                        Spacer(),

                        Text('40.75', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF323643)
                        ))

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [

                        Text('Delivery charge',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF323643)
                        )),
                        Spacer(),

                        Text('FREE', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF323643)
                        ))
                      ]
                    ),
                  ),

                  SizedBox(height: 16,),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Divider(
                      height: 2,
                      thickness: 2,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),

                  SizedBox(height: 16,),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                        children: [

                          Text('Total',style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF323643)
                          )),
                          Spacer(),

                          Text('40.75', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF323643)
                          ))
                        ]
                    ),
                  ),////////////////////////////////////////////////////////////////////////////////////////////

                  SizedBox(
                    height: 20,),

                  Container(
                      height:10,
                      width: 450,
                      color: Color(0xFFEBEBEB)
                  ),

                 SizedBox(
                   height: 20,
                 ),


                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(

                      children: [

                        Text('Recomended you', style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                        )),

                        Spacer(),

                        Text('View All', style: TextStyle(

                        )),
                        Icon(Icons.arrow_right_alt)
                      ],
                    ),
                  ),



                  SizedBox(
                    height: 6,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Text('Explore best items and enjoy your meal'),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),



                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
                    child: Container(
                      height: 240,
                      child: GridView.builder(
                          itemCount: gridPath.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 15,
                            mainAxisExtent: 295,



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
                                          child: SvgPicture.asset('assets/heartul.svg'),
                                          onPressed: () {},
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

                                  Text(cuisineName[index],style: TextStyle(
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
    );
  }
}

