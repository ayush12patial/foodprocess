import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';


class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override

  List<String> cuisineName=['Allo puri','chat bandar','Pizza','Macdoland','Chaap'];

  List<String> gridName= ['Naked Jackfruit Burrito Bowl - R','NY chicken Roll - Large/Spicy','Kochchi Prawn Spaghetti - extra cream','Double Chicken & Cheese Fiesta - Pizza - L'];


  List<String> gridPath = ['assets/pizza2.png','assets/egg2.png','assets/kashmiri.png','assets/ny.png'];

  List<String> imgPath = ['assets/egg2.png','assets/kashmiri.png','assets/ny.png'];

  String setimg = '';

  String img = "";

  String text = "";



   // Future<void> info () async{
    // SharedPreferences info =  await SharedPreferences.getInstance() ;

    // setimg = info.getString('setitem')!;

    // print(setimg.toString() + "ayush");


   //}

   @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(

        bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
         topRight: Radius.circular(20),
    ),
    ),
         child: Padding(
           padding: EdgeInsets.only(left: 25 , right: 18),
           child: Row(

              children: [
                 Container(


                   decoration: BoxDecoration(
                     color: Color(0xffD3D3D3),
                     borderRadius: BorderRadius.circular(10)
                   ),

                   child: Row(
                     children: [

                       TextButton(onPressed: (){},

                           child: Container
                             (
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.white
                             ),
                               child: Icon(Icons.add,color: Colors.black,)),

                       ),

                       Text('2'),

                       TextButton(onPressed: (){

                       },
                           child:  Container(
                               padding: EdgeInsets.all(2.0),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30),
                                   color: Colors.white
                               ),
                               child: SvgPicture.asset('assets/subtract.svg',color: Colors.black,))

                       )

                     ],
                   ),

        ),

             SizedBox(
               width: 90,
             ),

                Container(
                      padding: EdgeInsets.only(left: 15, right: 15),

                  decoration: BoxDecoration(
                      color: Color(0xffFE724C),
                      borderRadius: BorderRadius.circular(10)
                  ),

                  child: Row(
                    children: [


                     TextButton(onPressed: (){
                       Navigator.pushNamed(context, '5');
                     },
                         child: Text('Add to cart', style: TextStyle(
                           color: Colors.white,
                         ),)
                     )


                    ],
                  ),

                ),
      ],
    ),
         )),
      body: SafeArea(

        child:SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
              Stack(
               children: [

                Image.asset(todo["img"], width: 500, height: 300,fit: BoxFit.cover),

              Container(

                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  child: Icon(Icons.arrow_back,color: Colors.black,),
                  onPressed: () {
                    Navigator.pop(context,"3");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF1F1F1),
                    shape: CircleBorder(),
                  ),),
              ),

              Container(

                alignment: Alignment.topRight,
                child: ElevatedButton(
                  child:SvgPicture.asset('assets/meatballs.svg'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF1F1F1),
                    shape: CircleBorder(),
                  ),),
              ),

            ]),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    
                    padding: EdgeInsets.only(left: 16, right: 16),

                    child: Row(

                      children: [
                        Container(
                          padding: EdgeInsets.all(16),

                          decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),

                            borderRadius: BorderRadius.circular(30)
                          ),

                          child: Text('Chicken', style:
                            TextStyle(
                              color: Colors.black,
                            ),),
                        ),
                        SizedBox(
                          width: 8,
                        ),


                        Container(
                          padding: EdgeInsets.all(16),

                          decoration: BoxDecoration(
                              color: Color(0xffF1F1F1),

                              borderRadius: BorderRadius.circular(30)
                          ),

                          child: Text('Briyani', style:
                          TextStyle(
                            color: Colors.black,
                          ),),
                        ),
                        SizedBox(
                          width: 8,
                        ),


                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Color(0xffF1F1F1),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text('Asian', style:
                          TextStyle(
                            color: Colors.black,
                          ),),
                        )
                      ],
                    ),
                  ),


                SizedBox(

                  height: 12,
                ),

                
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      Text(todo["text"], style:
                        TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(shape: BoxShape.circle,color:  Color(0xffFE724C),
                        ),
                        child: GestureDetector(onTap: (){
                          Fluttertoast.showToast(msg: "hey");
                        }
                            ,child:SvgPicture.asset('assets/heart.svg')),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 8,
                ),



                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/A.svg'),
                      
                      Text('2.2 away from you'),

                      SizedBox(
                        width: 15,
                      ),

                      SvgPicture.asset('assets/star.svg'),

                      SizedBox(

                        width:8,
                      ),

                      Text("4.9 (1.1k+ Reviwes)"),
                    ],
                  ),
                ),

                SizedBox(

                  height: 13.5,
                ),

                
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      
                      Text('20.0',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
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
                ),

                SizedBox(
                  height: 24,
                ),


                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(

                    children: [

                      Text("Description",style: TextStyle(

                        fontWeight: FontWeight.w600,
                        fontSize: 14
                      ),),

                      SizedBox(

                        width: 40
                      ),
                      
                      Text('Reviews and others',style: TextStyle(

                        color: Colors.grey
                      ),)
                    ],
                  ),

                ),

                SizedBox(height: 8,),

                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Align(alignment: Alignment.centerLeft,child: SvgPicture.asset('assets/line.svg')),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  padding: EdgeInsets.only(left:16, right:16),
                  child: Text('Lorem ipsum dolor sit amet consectetur. Sit adipiscing maecenas malesuada lacus ultrices ac habitant.'

                      ' Enim tristique in integer euismod mauris aenean in. Odio sed gravida nunc non duis.'

                      ' Suspendisse ac lectus lobortis auctor aliquam nunc. Facilisis aliquet aliquam in mattis sapien '

                      'pretium ornare. Read More...', style: TextStyle(
                    height: 1.4,
                    color: Color(0xFF323643),
                    fontSize: 14
                  ),),
                ),

                SizedBox(

                  height: 24,
                ),

                Container(
                  color: Color(0xffD3D3D3),
                  height: 10,
                  width: 450,

                ),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),

                  child: Row(


                    children: [

                      Text('Recomended you', style:
                        TextStyle(

                          fontWeight: FontWeight.w700,
                          fontSize: 18,

                        ),),

                      Spacer(),

                      Text('  View  All'),
                      SizedBox(
                        width: 8,
                      ),

                      SvgPicture.asset('assets/arrowri.svg'),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15,
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
            ]
          ),

      ),
        ),
      )
    );
  }
}
