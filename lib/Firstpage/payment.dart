import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodorderprocess/Firstpage/grid.dart';


enum creditcard {mastercard, visacard, mobile}

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
   creditcard ? _creditcard;

  Widget build(BuildContext context) {
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => grid()),
              );
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Color(0xffFE724C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 60,right: 60,top: 25,bottom: 25),
                  child: Text('Confirm to pay - \u0024 40.75',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                  ),),

                )
            ),
          ),
        ),


      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(

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

                    Text('Payment Process',style: TextStyle(
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

                SizedBox(height: 34),

                Container(
                  alignment: Alignment.centerLeft,
                    child: Text('Debit/Credit Cards',style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22
                    ),)
                ),

                SizedBox(height: 16,),

                Row(
                  children: [
                   Image.asset('assets/group.png'),

                    SizedBox(width: 15,),

                    Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Mastercard',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                          )),

                          SizedBox(height: 6,),


                          Text('2356 84** **** 9812'),


                        ],

                      ),
                    ),

                    SizedBox(width: 98),
                    
                    Radio(
                        activeColor: Colors.green,
                        value: creditcard.mastercard,
                        groupValue: _creditcard,
                        onChanged: (val){setState(() {
                          _creditcard = val;

                        });} )

                  ],
                ),

                SizedBox(height: 16,),

                Divider(
                  height: 2,
                  thickness: 2,
                  color: Color(0xFFEEEEEE),
                ),

                SizedBox(height: 16,),

                Row(
                  children: [
                    Image.asset('assets/visa.png'),

                    SizedBox(width: 15,),

                    Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Visa card',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          )),

                          SizedBox(height: 6,),


                          Text('2356 84** **** 9812'),


                        ],

                      ),
                    ),

                    SizedBox(width: 98),

                    Radio(
                        activeColor: Colors.green,
                        value: creditcard.visacard,
                        groupValue: _creditcard,
                        onChanged: (val){setState(() {
                          _creditcard = val;

                        });}),

                  ],
                ),
                SizedBox(height: 16,),

                Divider(
                  height: 2,
                  thickness: 2,
                  color: Color(0xFFEEEEEE),
                ),

                SizedBox(height: 14,),

                Text('Mobile banking',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22
                ),),


                SizedBox(height: 16),

                Row(
                  children: [
                    Image.asset('assets/paypal.png'),

                    SizedBox(width: 15,),

                    Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Paypal',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          )),

                          SizedBox(height: 6,),


                          Text('2356 84** **** 9812'),

                        ],

                      ),
                    ),

                    SizedBox(width: 98),


                    Radio(
                      activeColor: Colors.green,
                        value: creditcard.mobile,
                        groupValue: _creditcard,
                        onChanged: (val){setState(() {
                          _creditcard = val;

                        });}),


                  ],
                ),

                SizedBox(height: 32.5,),

                Row(
                  children: [

                    SvgPicture.asset('assets/plusc.svg'),

                    Text('Add New Payment Method',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF323643)
                    ),)
                  ],
                ),
                SizedBox(height: 26.5,),

                Divider(
                  height: 2,
                  thickness: 2,
                  color: Color(0xFFEEEEEE),
                ),

                SizedBox(height: 16,),

                Row(
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

                SizedBox(
                  height: 12,
                ),


                Row(
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

                SizedBox(height: 16,),


                Divider(
                  height: 2,
                  thickness: 2,
                  color: Color(0xFFEEEEEE),
                ),

                SizedBox(height: 16,),

                Row(
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
                )
              ],
            ),

      ),
        ),

      ),
    );
  }
}
