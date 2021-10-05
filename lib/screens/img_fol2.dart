import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qlriderr/Widgets/scalepage.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/upadharpan.dart';
enum ImageSourceType { gallery, camera }
class ImageFromGalleryEx2 extends StatefulWidget {

  @override
  ImageFromGalleryEx2State createState() => ImageFromGalleryEx2State();
}

class ImageFromGalleryEx2State extends State<ImageFromGalleryEx2>   {
   double width = 0.0;
  double height = 0.0;
   final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController vehiclecontroller = TextEditingController();
  TextEditingController expirycontroller = TextEditingController();
   TextEditingController datepickercontroller = TextEditingController();
 
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
  final DateTime? pickedDate = await showDatePicker(
     initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2050), context: context,
  builder: (context, child) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.light(
          primary: ColorsConsts.primaryColor, // header background color
          onPrimary: Colors.white, // header text color
          onSurface: Colors.black, // body text color
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: ColorsConsts.primaryColor, // button text color
          ),
        ),
      ),
      child: child!,
    );
  }); 
 
  if (pickedDate != null && pickedDate != currentDate)
    setState(() {
      currentDate = pickedDate;
      datepickercontroller.text=currentDate.toString().split(" ").first;
    });
}
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
          child: Form(key: _form,
            child: Column(
                children: [
            Container(
                height: height / 3,
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
                     padding: EdgeInsets.only(top: 45,left: 20),
                       child: Text(
                        'Upload Your Vehicle Registration Certificate',
                       
                        style: TextStyle(
                            color: ColorsConsts.whiteColor,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 15,right:55 ),
                     child: Text(
                      'This document will be required for your \n registration',  style:
                            TextStyle(color: ColorsConsts.whiteColor, fontSize: 15,),
                      ),
                    ),
                  ]),
                    
                    )),
                    Container(
              margin: const EdgeInsets.only(
                top: 5,
              ),
              height: MediaQuery.of(context).size.height * .38,
              width: MediaQuery.of(context).size.width,
              child:  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(elevation: 5, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),),
                  child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:12,),
                child: DottedBorder(color: Colors.black, dashPattern: [6, 6, 6, 6], 
                      
                  child: Container(
                    decoration: BoxDecoration(//border: Border.all(color: ColorsConsts.blackColor),
                    color: Colors.grey[300]),
                    height:height*.140,width: width*.68,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: (){}, icon: Image.asset('assets/camera.png',height: 35,),),
                         Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Text('Front Picture',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )),
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(top:18),
                child: DottedBorder(color: Colors.black, dashPattern: [6, 6, 6, 6], 
                  child: Container(
                    decoration: BoxDecoration( color: Colors.grey[300]),
                    height:height*.140,width: width*.68,child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         IconButton(onPressed: (){}, icon: Image.asset('assets/camera.png',height: 35,),),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Text('Back Picture',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        ),
                     
                      ],
                    )),
                ),
              )
              ]),
            
                  )
              ),
            ),
               SizedBox(
              height: MediaQuery.of(context).size.height * .30,
              width: MediaQuery.of(context).size.width,
              child:  Padding(
                   padding: const EdgeInsets.only(left:8.0,right: 8),
                   child: Card(elevation: 5, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),),
              child: SingleChildScrollView(
                child: Column(children: [
                   Padding(
                       padding: const EdgeInsets.only(right: 35, left: 35,),
                       child: TextFormField(cursorColor: Colors.black,
                        controller: vehiclecontroller,keyboardType: TextInputType.text,
                          
                           decoration: const InputDecoration( focusedBorder:UnderlineInputBorder(),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                         
                               labelText: 'Vehicle Registration Number',
                               labelStyle: TextStyle(color: ColorsConsts.blackColor,
                               
                               fontWeight: FontWeight.bold,fontSize: 12),),
                                 onFieldSubmitted: (value) {},
                        validator:( value)
                        {
                       if (value!.isEmpty||value==null)
                    return 'Please Enter vehicle registration number';
                              else
                             return null;
                        },
                               ),
                     ),
                     Padding(
                       padding:
                           const EdgeInsets.only(right: 35, left: 35, ),
                       child: TextFormField(cursorColor: Colors.black,
                       controller: datepickercontroller,keyboardType: TextInputType.datetime,
                           
                           decoration:  InputDecoration( focusedBorder:UnderlineInputBorder(),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                         
                             suffixIcon: 
                               IconButton( onPressed:()=> _selectDate(context),
                               
                               icon: Icon(Icons.calendar_today_rounded,color: ColorsConsts.blackColor,),),
                             
                               labelText: 'Expiry Date',
                               labelStyle: TextStyle(color: ColorsConsts.blackColor,fontSize: 12,fontWeight: FontWeight.bold),
                              ),
                                onFieldSubmitted: (value) {},
                        validator:( value)
                        {
                       if (value!.isEmpty||value==null)
                    return 'Please Enter Expiry date';
                              else
                             return null;
                        },
                                  
                              ),
                     ),
                     SizedBox(height: 16,),
                      InkWell(
                          onTap: () {
                          setState(() {
                                              if (_form.currentState!.validate()) {
                                                print("successful");
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => UploadAdharPan()));
                                                
                                              } else {
                                                print("UnSuccessfull");
                                              }});},
                           child: Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.only(right:8),
                             
                            height: height*.060,width: width*.60,alignment: Alignment.center,
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
                     
                        
                    ],),
              ),
            )),
            
            )]),
          )));}}
 