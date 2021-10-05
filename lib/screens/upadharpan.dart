

import 'package:flutter/material.dart';
import 'package:qlriderr/Widgets/scalepage.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/adhar.dart';
import 'package:qlriderr/screens/pan.dart';
class UploadAdharPan extends StatefulWidget {
  const UploadAdharPan({ Key? key }) : super(key: key);

  @override
  _UploadAdharPanState createState() => _UploadAdharPanState();
}

class _UploadAdharPanState extends State<UploadAdharPan>{
 
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
   
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          Container(
              height: height / 3.3,
              width: width,
              decoration: BoxDecoration(color: ColorsConsts.primaryColor),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 5.0),
                      
                        padding: const EdgeInsets.only(top: 32, left: 10),
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
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 32.0),
                            child: Icon(
                              Icons.help_outline_outlined,
                              color: ColorsConsts.whiteColor,
                              size: 27,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 32.0, left: 10, right: 20),
                            child: Text(
                              'Support',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: ColorsConsts.whiteColor,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                    Padding(
                    padding: EdgeInsets.only(top: 60,right:20),
                    child: Text(
                      'Upload Adhar Or Pan Card',
                      style: TextStyle(
                          color: ColorsConsts.whiteColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  
                  ]),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(right:160,top:20),
                    child: Text('Choose any one ID',style: TextStyle(color: ColorsConsts.blackColor,
                    fontWeight:FontWeight.bold ,fontSize: 18),),
                  ),
                   Container(
            margin: const EdgeInsets.only(
              top: 5,
            ),
            height: MediaQuery.of(context).size.height * .21,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(35),
            //   border: Border.all(color: Colors.grey,),
            // ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(elevation: 01,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('1'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(height: height*.2,width: width*.4,
                          child: Image.asset('assets/a.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Adhar Card',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(onPressed: (){
                         Navigator.push(context,
                        // ScalePageRoute(widget: ADHARCard()));
                          MaterialPageRoute(builder: (context)=>ADHARCard()));
                   
                          }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                        )
                      ],
                         ),
                    ),
                  ),
                  
     ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text('--- OR ---',style: TextStyle(fontWeight: FontWeight.w900),),
     ),
       Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            height: MediaQuery.of(context).size.height * .21,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(35),
            //   border: Border.all(color: Colors.grey,),
            // ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(elevation: 01,
         shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.white38, width: 1)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('2'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(height: height*.2,width: width*.4,
                          child: Image.asset('assets/p1.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('PAN Card',style: TextStyle(fontWeight: FontWeight.bold),),
                        
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(onPressed: (){
                              Navigator.push(context, 
                               //ScalePageRoute(widget: PANCard()));
                         MaterialPageRoute(builder: (context)=>PANCard()));
                   
                          }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                        )
                      ],
                         ),
                    ),
                  ),
                  
     )
      ])));
   }
}