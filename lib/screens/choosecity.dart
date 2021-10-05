import 'package:flutter/material.dart';
import 'package:qlriderr/Widgets/scalepage.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/fillprofile.dart';

import 'otp.dart';
class ChooseCity extends StatefulWidget {
  const ChooseCity({ Key? key }) : super(key: key);

  @override
  _ChooseCityState createState() => _ChooseCityState();
}

class _ChooseCityState extends State<ChooseCity> {
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
   
    return Scaffold(body: SingleChildScrollView(
      child: Column(children: [
        Container(
          height: height / 8,
          width: width,
          decoration: BoxDecoration(color: ColorsConsts.primaryColor),
          child: Row(
            children: [
              Container(
                 margin: const EdgeInsets.only(top: 5.0),
                       
               padding: EdgeInsets.only(top:height*.03, left:height*.005,),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: ColorsConsts.whiteColor,
                      size: 30,
                    )),
              ),
              Padding(
               padding: EdgeInsets.only(top:height*.03, left:height*.04,),
                 child: Text(
                  'Choose City',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorsConsts.whiteColor,
                      fontSize:20 ,
                ),
              ),),
               Padding(
                padding: EdgeInsets.only(top:height*.030, left:height*.091,),
                    child: Icon(
                  Icons.help_outline_outlined,
                  color: ColorsConsts.whiteColor,
                  size: 27,
                ),
              ),
               Padding(
                 padding: EdgeInsets.only(top:height*.030, left:height*.01,right: height*.01),
                   child: Text(
                  'Support',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: ColorsConsts.whiteColor,
                      fontSize: 18),
                ),
              ),
        
      ],),
      ),
      Padding(
        padding: const EdgeInsets.only(top:18,right: 15,bottom: 18),
        child: Text('We are serviciable in following cities',style: TextStyle(fontSize: 15,
          ),),
      ),
      Padding(
        padding: const EdgeInsets.only(left:20,right: 28,),
        child: TextFormField( cursorColor: ColorsConsts.blackColor,   decoration: InputDecoration(
           focusedBorder:OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                     
           border:  OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(10.0),
                        borderSide:  BorderSide(color: ColorsConsts.blackColor),
                      ),)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 28,bottom: 28,right: 18),
        child: Text('Choose Services you interested',style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 19),),
      ),
       SizedBox(height: height*.20,width: width*.9,  
       child: Card(elevation: 5, shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),),
                                       child: Row(children: [
            Padding(
            padding: EdgeInsets.only(),
        child: Image.asset('assets/icon.png',fit:BoxFit.cover,),
            ),
             Column(children: [
        Padding(
          padding:  EdgeInsets.only(top:50,right: 50),
          child: Text('Bike Taxi',style: TextStyle(fontSize: 16),),
        ),
          Padding(
          padding: const EdgeInsets.only(top:12,),
          child: Text('Pickup and drop customers',style: TextStyle(fontSize: 13),),
        ),
      
        
      ],),
        Padding(
           padding:  EdgeInsets.only(bottom: 78,),
           child: IconButton(onPressed: (){}, icon: Icon(Icons.check_box_outline_blank)),
        ),
      
          ],),
        ),
      ),
       SizedBox(height:height*.32,),
               InkWell(
                        onTap: () {
                          Navigator.push(context,
                           //ScalePageRoute(widget: FillProfile()));
                          MaterialPageRoute(builder: (context)=>FillProfile()));
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(height: height*.065,width: width*.4,
                          alignment: Alignment.center,
                          // padding: EdgeInsets.all(15),
                             margin: EdgeInsets.only(right:19),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ColorsConsts.primaryColor),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                     
             
       ]),
    ));
  }
}