import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:qlriderr/Widgets/scalepage.dart';
import 'package:qlriderr/consts/const.dart';
import 'otp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double width = 0.0;
  double height = 0.0;
   final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController numcont = TextEditingController();
  
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
                        )
                      ],
                    ),
                   Padding(
                      padding: EdgeInsets.only(top: 45,right: 13),
                      child: Text(
                        'Enter Your Mobile Number',
                        style: TextStyle(
                            color: ColorsConsts.whiteColor,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15,right: 50 ),
                      child: Text(
                        'Please confirm your mobile number , we \nneed to verify.',
                        style:
                            TextStyle(color: ColorsConsts.whiteColor, fontSize: 15),
                            // fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                )),
                 Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18,top: 40),
                    // child: Container(
                    //   alignment: Alignment.center,
                    //   decoration: BoxDecoration(//borderRadius: BorderRadius.circular(30),
                    // border: Border.all(color: ColorsConsts.blackColor)),
                      child: TextFormField(textAlign: TextAlign.start,
                      
                      keyboardType: TextInputType.phone,
                        controller: numcont,
                          decoration: InputDecoration(
                          hintText: "Enter Mobile Number",
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold,
                              color: ColorsConsts.blackColor, fontSize: 13),
                          prefixIcon: CountryCodePicker(
                            initialSelection: '+91',
                            //favorite: ['+91', 'IN'],
                            textStyle: TextStyle(
                                fontSize: 13,color: ColorsConsts.blackColor,
                                fontWeight: FontWeight.bold),
                            // showFlag: true,
                          ),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                        border:  OutlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                         focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: ColorsConsts.blackColor),),
                          ),
                        onFieldSubmitted: (value) {},
                  validator:( value)
                  {
                 if (value!.isEmpty||value==null||value.length!=10)
              return '                           Mobile Number must be of 10 digit';
            else
           return null;
                  },
              ),
                      ),
                    
                  
              Padding(
                padding: const EdgeInsets.only(left: 22,top: 12),
                child: Row(
                  children: [
                    Text('By continuing agree to the ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),),
                    Text('terms ',style: TextStyle(fontSize: 12,color: ColorsConsts.primaryColor,fontWeight: FontWeight.bold),),
                    Text('and ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),),
                    Text('privacy policy ',style: TextStyle(fontSize:12,color: ColorsConsts.primaryColor,fontWeight: FontWeight.bold),),
                    Text('of ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),),
                     ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:268,top: 5),
                child: Text('QI BIKE.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              ),
                 
              SizedBox(height:height*.37,),
               InkWell(
                        onTap: () {
                          setState(() {
                                    if (_form.currentState!.validate()) {
                                      print("successful");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OTPPage()),
                                      );
                                    } else {
                                      print("UnSuccessfull");
                                    }
                                  });
                                },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(height: height*.065,width: width*.4,alignment: Alignment.center,
                          // padding: EdgeInsets.all(15),
                             margin: EdgeInsets.only(right:15,bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ColorsConsts.primaryColor),
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                     
                ],
              ),
          ),
        ));
  }
}
