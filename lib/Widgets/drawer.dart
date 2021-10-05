import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/myrides.dart';
import 'package:qlriderr/screens/payment.dart';
import 'package:qlriderr/screens/settings.dart';

class Profile1 extends StatefulWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*.17,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    maxRadius: 55,
                    backgroundColor: ColorsConsts.primaryColor,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/user.png'),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only( top: 50),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Mr. Rasa',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: ColorsConsts.blackColor),
                      ),
                    ),
                    
                  ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('+91988675456',style: TextStyle(fontWeight: FontWeight.bold),),
               ),  ],
              ),
             
            ]),
          ),
            Divider(color: ColorsConsts.blackColor,thickness: 1,),
            
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: InkWell(onTap: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyRides()));
         },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                         },
                      icon: Image.asset(
                        'assets/1.jpg',
                      ),
                      iconSize: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'My Rides',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorsConsts.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
              ),
              child: InkWell(onTap: (){
                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentScreen()));
         
              },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/2.jpg',
                      ),
                      iconSize: 45,
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Payments',
                          style: TextStyle(
                              fontSize: 16,
                              color: ColorsConsts.blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onTap: (){  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentScreen()));
           },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/3.jpg',
                    ),
                    iconSize: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Invite Friends',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/4.jpg',
                    ),
                    iconSize: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'My Rewards',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/5.jpg',
                    ),
                    iconSize: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Notification',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: InkWell(onTap: (){
                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Settings()));
         
              },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                       },
                      icon: Image.asset(
                        'assets/6.jpg',
                      ),
                      iconSize: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorsConsts.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/7.jpg',
                    ),
                    iconSize: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Support',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/8.jpg',
                  ),
                  iconSize: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'About Us',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsConsts.blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               
          
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 18.0),
          //   child: Row(
          //     children: [
          //       IconButton(
          //         onPressed: () {
          //            Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => LoginPage()),
          //       );
                
          //         },
          //         icon: Image.asset(
          //           'assets/9.jpg',
          //         ),
          //         iconSize: 50,
          //       ),
          //       const Padding(
          //         padding:  EdgeInsets.only(left: 18.0),
          //         child: Text(
          //           'Logout',
          //           style: TextStyle(
          //               fontSize: 16,
          //               color: ColorsConsts.blackColor,
          //               fontWeight: FontWeight.bold),
          //         ),
          //       ),
                Divider(color: ColorsConsts.blackColor,thickness: 1,),
                 Row(
                   children: [
                     Padding(
                      padding: const EdgeInsets.only(left: 43),
                      child: Text(
                        'Make More Money \n Became a Captain',
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorsConsts.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                ),
                 
              Padding(
                padding: const EdgeInsets.only(left: 43),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,),),
              )
              ],
            ),  ],
                 ),
          ),

       );
    }
}
