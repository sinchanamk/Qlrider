import 'package:country_code_picker/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:qlriderr/Widgets/scalepage.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/consts/icons.dart';
import 'package:qlriderr/screens/selfipic.dart';
 class FillProfile extends StatefulWidget {
   const FillProfile({ Key? key }) : super(key: key);
 
   @override
   _FillProfileState createState() => _FillProfileState();
 }
 
 class _FillProfileState extends State<FillProfile>  {
 
  double width = 0.0;
  double height = 0.0;
    final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController namecont = TextEditingController();
  TextEditingController phonecont = TextEditingController();
 TextEditingController addresscont = TextEditingController();
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
                      padding: EdgeInsets.only(top: 60,right: 55),
                      child: Text(
                        'Fill in the profile details',
                        style: TextStyle(
                            color: ColorsConsts.whiteColor,
                            fontSize:26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                       padding: EdgeInsets.only(top: 15,right: 16 ),
                     child: Text(
                        'Fill in profile details as per your driving license.',
                        style:
                            TextStyle(color: ColorsConsts.whiteColor, fontSize: 15,),
                      ),
                    ),
                  ]),
                )),
                  Container(
              margin: const EdgeInsets.only(
                top: 6,
              ),
              height: MediaQuery.of(context).size.height * .66,
              width: MediaQuery.of(context).size.width,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(elevation: 5, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
             child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 20, left: 20,top: 15),
                     child: TextFormField(cursorColor: ColorsConsts.blackColor,
                         controller:namecont,
                         keyboardType: TextInputType.name,
                         decoration: InputDecoration(
                             hintText: 'Name',
                            focusedBorder:UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                       
                             hintStyle: TextStyle(color: ColorsConsts.blackColor,fontWeight: FontWeight.bold,
                             fontSize: 15),),
                             onFieldSubmitted: (value) {},
                                                validator: (value)
                                                  {
                                                    if(value!.isEmpty||value==null)
                                                    {
                                                      return 'Please Enter your Name!';
                                                    }
                                                    return null;
                                                  },
               
                             ),
                   ),
                   Padding(
                     padding:
                         const EdgeInsets.only(right: 20, left: 20, top: 15),
                     child: TextFormField(cursorColor: ColorsConsts.blackColor,
                         keyboardType: TextInputType.streetAddress,
                         controller: addresscont,
                         decoration: const InputDecoration(
                             hintText: 'Address',border: UnderlineInputBorder(),
                              focusedBorder:UnderlineInputBorder(),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                       
                             hintStyle: TextStyle(color: ColorsConsts.blackColor,fontWeight: FontWeight.bold,
                             fontSize: 15,),
                            ),
                            onFieldSubmitted: (value) {},
                          validator: (value) {
                            if (value!.isEmpty||value==null) {
                              return 'Please Enter your Address!';
                            }
                            return null;
                          },
                 
                            ),
                   ),
                   Padding(
                     padding:
                          EdgeInsets.only(right: 20, left: 20, top:15),
                     child: TextFormField(cursorColor: ColorsConsts.blackColor,
                     keyboardType: TextInputType.phone,
                     controller: phonecont,
                         // ignore: prefer_const_constructors
                         decoration: InputDecoration(
                       hintText: 'Phone Number', focusedBorder:UnderlineInputBorder(),
                           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                       hintStyle: TextStyle(color: ColorsConsts.blackColor,fontWeight: FontWeight.bold,
                       fontSize: 15,),
                     ),
                     onFieldSubmitted: (value) {},
                  validator:( value)
                  {
                 if (value!.isEmpty||value==null||value.length!=10)
              return 'Mobile Number must be of 10 digits!';
            else
           return null;
                  },
                     ),
                   ),
               SizedBox(height: height*.06,),
            //      Stack(children: [
            //  Padding(
            //        padding: const EdgeInsets.only(left:8.0),
            //        child: Container(height: height*.078,width: height*.16,padding: EdgeInsets.only(left:55),
            //        decoration: BoxDecoration(
            //          borderRadius: BorderRadius.circular(50),
            //          color: Colors.grey[700],),
            //          child:IconButton(onPressed: (){},
            //           icon: Icon(Icons.vpn_key_sharp,color: ColorsConsts.whiteColor,)) ,
            //        ),
            //                  ),
               
            //       SizedBox(height: height*.07),
            //        Container(
            //   child: CircleAvatar(backgroundColor: ColorsConsts.primaryColor,radius: 31,
            //     child: Icon(Icons.vpn_key_outlined,color: ColorsConsts.whiteColor,),
            //        ),
            //       ),]),
                Container(height: 50,
                  child: LiteRollingSwitch(

    value: true,
    textOn: 'FEMALE',
    textOff: 'MALE',
    colorOn: Colors.grey[700],
    colorOff: ColorsConsts.primaryColor,
    iconOn: Icons.female_rounded,
    iconOff:Icons.male_sharp,
    textSize: 16,

    onChanged: (bool state) {
      print('Current State of SWITCH IS: $state');
    },
),
                ),
                   Padding(
             padding: const EdgeInsets.only(left:240,top: 30),
             child: CircleAvatar(maxRadius: 25,backgroundColor: ColorsConsts.primaryColor,
             
                child: IconButton(onPressed: (){
                
                            setState(() {
                                      if (_form.currentState!.validate()) {
                                        print("successful");
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SelfieImage()));
                                        
                                      } else {
                                        print("UnSuccessfull");
                                      }});},
                                    
                                   icon:const Icon(Icons.arrow_forward_ios_rounded,size: 26,
                color: ColorsConsts.whiteColor,))),
                   ),
                  ],
                ),
                 ),
                  )),
                 
               ]),
          ) ));
     
    
  }
   }