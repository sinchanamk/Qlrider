import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:qlriderr/Widgets/scalepage.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/register.dart';
class ADHARCard extends StatefulWidget {
  const ADHARCard({ Key? key }) : super(key: key);

  @override
  _ADHARCardState createState() => _ADHARCardState();
}

class _ADHARCardState extends State<ADHARCard> {
 
  double width = 0.0;
  double height = 0.0;
   final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController adharcontroller = TextEditingController();
  
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
                height: height / 3.65,
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
                      padding: EdgeInsets.only(top: 50,right:85 ,),
                      child: Text(
                        'Upload ADHAR Card',
                        style: TextStyle(
                            color: ColorsConsts.whiteColor,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),]),),),//SizedBox(height: 90,),
                    Container(
              margin: const EdgeInsets.only(
                top: 5,
              ),
              height: MediaQuery.of(context).size.height * .48,
              width: MediaQuery.of(context).size.width,
              child:  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(elevation: 5, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),),
                  child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:25,right: 98,bottom: 10),
                child: Text('Upload your ADHAR picture',style: TextStyle(fontWeight: FontWeight.bold),),
                          
              ),
              Padding(
                padding: const EdgeInsets.only(top:13,),
                child: DottedBorder(color: Colors.black, dashPattern: [6, 6, 6, 6], 
                      child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    height:height*.150,width: width*.72,child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         IconButton(onPressed: (){}, icon: Image.asset('assets/camera.png',height: 35,),),
                       Padding(
                          padding: const EdgeInsets.only(left:10,bottom: 25),
                          child: Text('Front Picture',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top:15,),
                child: DottedBorder(color: Colors.black, dashPattern: [6, 6, 6, 6], 
                     child: Container(
                    decoration: BoxDecoration(//border: Border.all(color: ColorsConsts.blackColor),
                    color: Colors.grey[300]),
                    height:height*.150,width: width*.72,child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: (){}, icon: Image.asset('assets/camera.png',height: 35,),),
                         Padding(
                          padding: const EdgeInsets.only(left:10,bottom: 25),
                          child: Text('Back Picture',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )),
                ),
              ),
             
                ],
                  )),),),
                   SizedBox(
              height: MediaQuery.of(context).size.height * .14,
              width: MediaQuery.of(context).size.width,
              child:  Padding(
                   padding: const EdgeInsets.only(left:8.0,right: 8),
                   child: Card(elevation: 5, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),),
              child: Column(children: [
                 Padding(
                     padding: const EdgeInsets.only(right: 35, left: 35,top: 10),
                     child: TextFormField(cursorColor: ColorsConsts.blackColor,
                     keyboardType: TextInputType.number,
                     controller: adharcontroller,
                         decoration:  InputDecoration(
                             labelText: 'ADHAR Number',
                             focusedBorder:UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                                color: ColorsConsts.blackColor),),
                        labelStyle: TextStyle(color: ColorsConsts.blackColor,
                             fontWeight: FontWeight.bold,fontSize: 12),),
                              onFieldSubmitted: (value) {},
                    validator:( value)
                    {
                   if (value!.isEmpty||value==null||value.length!=12)
                return 'Please Enter your 12 digits of adhar number';
              else
             return null;
                    },
                             ),
                   ),
                  
                  
                  ])),
                  
                  )),
                  SizedBox(height: 15,),
                   InkWell(
                        onTap: () {
                         setState(() {
                                    if (_form.currentState!.validate()) {
                                      print("successful");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Registration()),
                                      );
                                    } else {
                                      print("UnSuccessfull");
                                    }
                                  });
                                },
                        
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: EdgeInsets.only(right:15),
                           
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
                   
          
                  ]),
          )));
 }
}