
import 'package:flutter/material.dart';
import 'package:qlriderr/consts/const.dart';
import 'img_fol.dart';
class SelfieImage2 extends StatefulWidget {
  const SelfieImage2({ Key? key }) : super(key: key);

  @override
  _SelfieImage2State createState() => _SelfieImage2State();
}

class _SelfieImage2State extends State<SelfieImage2>with SingleTickerProviderStateMixin {
 
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
              top: 3,
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
            padding: EdgeInsets.only(top:10,right: 10),
            child: SizedBox(height:height*.2,width: width*.50,
            child: CircleAvatar(radius: 70,backgroundImage:AssetImage('assets/p.jpg',) ,
            
               )),
          ),
       
      Positioned(top: 120,left: 122,
        child:  IconButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>showAb()));
                      
        }, icon: Image.asset('assets/camera.png'),
        ))
    ],
  ),
  Padding(
    padding:  EdgeInsets.all(13),
    child: Text('Go ahead and submit your picture',style: TextStyle(fontWeight: FontWeight.bold),),
  ),
        SizedBox(height: 190,),
   InkWell(
                      onTap: () {
                       Navigator.push(context,
                       //ScalePageRoute(widget: ImageFromGalleryEx()));
                       MaterialPageRoute(builder: (context)=>
                     ImageFromGalleryEx()));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                           // margin: EdgeInsets.only(right:6),
                         
                        height: height*.065,width: width*.60,alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: ColorsConsts.primaryColor),
                          child: Text(
                            'Submit',
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