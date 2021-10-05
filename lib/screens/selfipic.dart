import 'package:flutter/material.dart';
import 'package:qlriderr/Widgets/scalepage.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/selfiepic2.dart';

import 'choosecity.dart';
class SelfieImage extends StatefulWidget {
  const SelfieImage({ Key? key }) : super(key: key);

  @override
  _SelfieImageState createState() => _SelfieImageState();
}

class _SelfieImageState extends State<SelfieImage>{
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
              height: height / 3.1,
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
                    padding: EdgeInsets.only(top: 60,right: 45),
                    child: Text(
                      'Click Your Selfie Picture',
                      style: TextStyle(
                          color: ColorsConsts.whiteColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                     padding: EdgeInsets.only(top: 15,right: 14 ),
                    child: Text(
                    'This picture will be available to your customers',
                      style:
                          TextStyle(color: ColorsConsts.whiteColor, fontSize: 15,),
                    ),
                  ),
                ]),
                  
                  )),
                  Container(
            margin: const EdgeInsets.only(
              top: 2,
            ),
            height: MediaQuery.of(context).size.height * .664,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(35),
            //   border: Border.all(color: Colors.grey,),
            // ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(elevation: 5, shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),child: Column(
    children: [
      Stack(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(top:21,right: 10,bottom: 10),
            child: SizedBox(height:height*.2,width: width*.50,
            child: Image.asset('assets/user.png',)),
          ),
       
      Positioned(top: 120,left: 123,
        child: IconButton(onPressed: (){}, icon: Image.asset('assets/camera.png'),
        ))
    ],
  ),
  Padding(
    padding: const EdgeInsets.all(13),
    child: Text('Please upload your selfie to continue',style: TextStyle(fontWeight: FontWeight.bold),),
  ),
        SizedBox(height: 160,),
   InkWell(
                      onTap: () {
                       Navigator.push(context,
                       //ScalePageRoute(widget: SelfieImage2()));
                       MaterialPageRoute(builder: (context)=>SelfieImage2()));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(right:8),
                         
                        height: height*.065,width: width*.60,alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: ColorsConsts.primaryColor),
                          child: Text(
                            'Upload Selfie',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
         

                ])  )))])));
  }
}