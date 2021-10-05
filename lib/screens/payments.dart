import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/Widgets/drawer.dart';
import 'package:qlriderr/screens/earnings.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _PaymentsState createState() => _PaymentsState();
}

 
 
class _PaymentsState extends State<Payments> {
  bool isSwitched = false;
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 
  double width = 0.0;
  double height = 0.0;
  
  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          drawer: Profile1(),
            body: Stack(children: [
      SizedBox(
        height: height,
        width: width,
        child: Image.asset(
          'assets/loc.png',
          fit: BoxFit.cover,
        ),
      ),
      Container(
          height: height / 9,
          width: width,
          decoration: BoxDecoration(color: ColorsConsts.primaryColor),
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20, left: 18, right: 15),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorsConsts.whiteColor,
                      child: Builder(
                        builder: (context) {
                          return IconButton(
                              onPressed: () {
                                  Scaffold.of(context).openDrawer();
                            
                              },
                              icon: Icon(
                                Icons.menu,
                                color: ColorsConsts.blackColor,
                              ));
                        }
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: height * .055,
                    width: width * .38,
                    decoration: BoxDecoration(
                        color: ColorsConsts.whiteColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18,
                          ),
                          child: Text(
                            'On Duty',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Switch(
                            splashRadius: 13,
                            onChanged: toggleSwitch,
                            value: isSwitched,
                            activeColor: ColorsConsts.primaryColor,
                            activeTrackColor: Colors.red,
                            inactiveThumbColor: ColorsConsts.greenColor,
                            inactiveTrackColor: Colors.green[100],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      height: height * .055,
                      width: width * .32,
                      decoration: BoxDecoration(
                          color: ColorsConsts.whiteColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'Earnings rs.200',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
          )),
                 
      Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            fit: StackFit.loose,
            overflow: Overflow.visible,
            alignment: Alignment.bottomCenter,
            children: [
             
              Align(alignment: Alignment.bottomCenter,
                child: Container(alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: ColorsConsts.whiteColor,
                    ),
                    height: height / 2.3,
                    width: double.infinity,
                      child:  SingleChildScrollView(
                      child: Column(
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(top:40,bottom:4),
                          child: Text('Bike Taxi',style: TextStyle(fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:4,bottom:4),
                          child: Text('Online Payment Rs 120',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            height: height*.21,width: width*.9,
                            child: Card(elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                
                              ), child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5,right: 5,bottom: 15),
                                    child: IconButton(onPressed: (){}, icon: Icon(Icons.circle,color: ColorsConsts.greenColor,size: 15,)),
                                  ),
                                  Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:120,top: 16),
                                      child: Text('PickUp .2km away',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                                    ),
                                     Padding(
                                       padding: const EdgeInsets.only(right:68,top: 5),
                                      child: Text('Shree apartments , 4th main road\n RT nagar, Bangalore.',
                                       style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                                     )
                                 
                                  ],)
                                ],
                              ),
                                Row(
                                children: [
                                  Padding(
                                     padding: const EdgeInsets.only(left: 5,right: 5,bottom: 15),
                                   child: IconButton(onPressed: (){}, icon: Icon(Icons.circle,
                                    color: ColorsConsts.primaryColor,size: 15,)),
                                  ),
                                  Column(children: [
                                     Padding(
                                        padding: const EdgeInsets.only(right:130,top: 16),
                                      child: Text('PickUp .8km away',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                                    ),
                                     Padding(
                                       padding: const EdgeInsets.only(right:70,top: 5),
                                       child: Text('Elements Mall ,Thanisandra main \nroad Bangalore.',
                                      style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                                    )
                                 
                                   
                                  ],)
                                ],
                              )
                            ],),
                            ),
                          ),
                       ),
                         Row(
                           children: [
                             InkWell(onTap: (){
                                Navigator.push(context,
                               // BouncyPageRoute(widget: Earnings()));
                                 MaterialPageRoute(builder: (context)=>Earnings()));
                        
                             },
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 48,bottom: 28),
                                 child: Container(
                                 
                                                     height: height*.05,width: width*.3,alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: ColorsConsts.greenColor),
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                                     ),
                               ),
                             ),
                         Padding(
                          padding: const EdgeInsets.only(left: 48,bottom: 28),
                                child: Container(
                               
                        height: height*.05,width: width*.3,alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: ColorsConsts.primaryColor),
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                        ),
                         ),
                           ],
                         ),
 
                        ],
                      ),
                    ),
                    ),
              ),
             Positioned(top: height*.48,
               child: CircleAvatar(radius:30 ,backgroundColor: ColorsConsts.greenColor,
                 child: CircleAvatar(radius: 26,backgroundColor: ColorsConsts.whiteColor,
                   child: Text('15',style: TextStyle(color:ColorsConsts.blackColor,fontSize: 20,fontWeight: FontWeight.bold),)),
               ),
             ),  
           
            
            ],
          ),
          
          )
    ])));
  }
}
