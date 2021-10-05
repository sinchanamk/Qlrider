import 'package:flutter/material.dart';
import 'package:qlriderr/consts/const.dart';
class Earnings extends StatefulWidget {
  const Earnings({ Key? key }) : super(key: key);

  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
    double width = 0.0;
  double height = 0.0;

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
   return  SafeArea(
     child: Scaffold(
       body:Stack(
         children: [
           Column(
             children: [
     Container(
             height: height / 4.1,
             width: width,
             decoration: BoxDecoration(color: ColorsConsts.primaryColor),
             child: Column(
               children: [
                 Row(
                         children: [
                           Container(
                             margin: const EdgeInsets.only(top: 5.0),
                             padding: const EdgeInsets.only(top: 15, left: 10),
                             child: InkWell(
                                 onTap: () {
                                   Navigator.pop(context);
                                 },
                                 child:  Icon(
                                   Icons.arrow_back_rounded,
                                   color: ColorsConsts.whiteColor,
                                   size: 30,
                                 )),
                           ),
                            Padding(
                 padding: EdgeInsets.only(top: 15, left: 18),
                 child: Text(
                 'Earnings',
                 style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: ColorsConsts.whiteColor,
                         fontSize: 20),
                 ),
           ),
                          
                           const Padding(
                             padding: EdgeInsets.only(top: 15,left: 95),
                             child: Icon(
                               Icons.help_outline_outlined,
                               color: ColorsConsts.whiteColor,
                               size: 27,
                             ),
                           ),
                           const Padding(
                             padding:
                                 EdgeInsets.only(top: 15, left: 10, right: 10),
                             child: Text(
                               'Support',
                               style: TextStyle(
                                   fontWeight: FontWeight.w700,
                                   color: ColorsConsts.whiteColor,
                                   fontSize: 18),
                             ),
                           ),
                         ]),
                         
                       Padding(
                       padding: const EdgeInsets.only(left:20,right:10,top:20,),
                       child: Row(children: [
                      Container(height: height*.055,width: width*.26,alignment: Alignment.center,
                        decoration: BoxDecoration(border: Border.all(color: ColorsConsts.whiteColor,width:2.5),
                            borderRadius: BorderRadius.circular(40),
                            color: ColorsConsts.primaryColor),
                        child: Text(
                          'Today',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                 Padding(
                  padding: const EdgeInsets.only(left:20,right:10,),
                      child: Container(height: height*.055,width: width*.26,alignment: Alignment.center,
                          decoration: BoxDecoration(border: Border.all(color: ColorsConsts.whiteColor,width:2.5),
                              borderRadius: BorderRadius.circular(40),
                              color: ColorsConsts.primaryColor),
                          child: Text(
                            'wallet',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                 ),
                      Padding(
                         padding: const EdgeInsets.only(left:8,right:10,),
                      child: Container(height: height*.055,width: width*.25,alignment: Alignment.center,
                          decoration: BoxDecoration(border: Border.all(color: ColorsConsts.whiteColor,width: 2.5),
                              borderRadius: BorderRadius.circular(40),
                              color: ColorsConsts.primaryColor),
                          child: Text(
                            'History',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),          
                   ],),
     ),
     
               ],
             ),
     )]),
       
            Positioned(top: 130,left: 15,right: 15,
              child: Align(alignment: Alignment.center,
                    child: Stack(fit: StackFit.loose,
                    overflow: Overflow.visible,
                    alignment: Alignment.center,
                    
                      children: [
              Container(height: height/1.2,width: width/1,
                child: Card(color: Colors.white,elevation: 20,
                child:
                 SingleChildScrollView(
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top:10,bottom: 10,right: 10),
                         child: Text('2000',//textAlign: TextAlign.center,
                         style: TextStyle(color: ColorsConsts.greenColor,fontWeight: FontWeight.bold,fontSize: 20),),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Your Wallet balance ',
                          style: TextStyle(color: ColorsConsts.blackColor,fontWeight: FontWeight.w700,
                         fontSize: 16),),
                       ),
                       InkWell(onTap: (){
                                
                               },
                                 child: Padding(
                                   padding: const EdgeInsets.only(right:8,top: 10),
                                   child: Container(
                                   
                                                       height: height*.05,width: width*.3,alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: ColorsConsts.primaryColor),
                                    child: Text(
                                      'Redeem',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                                       ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right:120,top: 50),
                                 child: Text('Transaction History', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                               ),
                                Padding(
                                 padding: const EdgeInsets.only(right:150,top: 15),
                                 child: Text('All Transactions', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                               ),
                                Padding(
                             padding: const EdgeInsets.only(top: 18.0),
                             child: ListView.builder(
                                 shrinkWrap: true,
                                 physics: const NeverScrollableScrollPhysics(),
                                 itemCount:6,
                                 itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(
                            bottom: 26, right: 25, left: 10),
                        child: Stack(children: [
                          Container(
                            height: height*.12,
                            width: width,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(40),
                            // ),
                            child: Card(
                              color: ColorsConsts.whiteColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:18,left: 12),
                                        child: Text('Redeem Transfered',style: TextStyle(color: ColorsConsts.blackColor,
                                        fontSize: 12,fontWeight: FontWeight.w700
                                        ),),
                                      ),
                                      Padding(
                                       padding: const EdgeInsets.only(top:8,right: 38),
                                         child: Text('Redeem Id',style: TextStyle(color: ColorsConsts.blackColor,
                                          fontSize: 12,fontWeight: FontWeight.w700)),
                                      ),
                                   Padding(
                                     padding: const EdgeInsets.only(top:8,right: 43),
                                        child: Text('12.20 PM',style: TextStyle(color: ColorsConsts.blackColor,
                                          fontSize: 12,fontWeight: FontWeight.w700)),
                                   ),
                                   
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:12,top: 8,bottom: 8),
                                    child: Text(' 200',
                                    style: TextStyle(color: ColorsConsts.blackColor,
                                    fontWeight: FontWeight.w800,fontSize: 12),),
                                  ),
                                ],
                              ),
                            ))],
                   ),
                     
                               );
                                 }))]),
                 )) )],
                    ),),
            ),
               
     ])));
   
             
  }
}