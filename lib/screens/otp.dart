import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qlriderr/Widgets/scalepage.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/choosecity.dart';
class OTPPage extends StatefulWidget {
  const OTPPage({ Key? key }) : super(key: key);

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
   final GlobalKey<FormState> _form=GlobalKey<FormState>();
  TextEditingController otpcont= TextEditingController();
  
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
                      padding: EdgeInsets.only(top: 45,right: 75),
                      child: Text(
                        'Enter Verification Pin',
                        style: TextStyle(
                            color: ColorsConsts.whiteColor,
                            fontSize:26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15,left: 18 ),
                      child: Text(
                        'Sit back & relax while we verify your phone number.',
                        style:
                            TextStyle(color: ColorsConsts.whiteColor, fontSize: 15,),
                      ),
                    ),
                  ]),
                )),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: PinCodeTextField(
                    controller:otpcont,
                    
                    keyboardType: TextInputType.number,
            length: 5,
            obscureText: true,
            animationType: AnimationType.slide,
            pinTheme: PinTheme(activeColor: ColorsConsts.primaryColor,
              shape: PinCodeFieldShape.underline,
              selectedFillColor: ColorsConsts.primaryColor,
              selectedColor: ColorsConsts.primaryColor,
              inactiveColor: ColorsConsts.primaryColor,
              disabledColor: ColorsConsts.primaryColor,
              
              borderRadius: BorderRadius.circular(5),
              inactiveFillColor: Colors.transparent,
              activeFillColor: Colors.white,
              
            ),
                  
                
            animationDuration: Duration(milliseconds: 300),
            enableActiveFill: true,
            textStyle: TextStyle(color: ColorsConsts.primaryColor),
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
              setState(() {
              //  currentText = value;
              });
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              return true;
            }, appContext:context , 
                  validator:( value)
                    {
                   if (value!.isEmpty||value== 5)
                return 'Please Enter 5 digit OTP Pin';
              else
             return null;
                    },  
                  ),
                ),
                 
                 SizedBox(height:height*.40,),
            
            InkWell(
                        onTap: () {
                           setState(() {
                                      if (_form.currentState!.validate()) {
                                        print("successful");
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ChooseCity()),
                                        );
                                      } else {
                                        print("UnSuccessfull");
                                      }
                                    });
                                  },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              margin: EdgeInsets.only(right:15),
                           
                          height: height*.065,width: width*.4,alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ColorsConsts.primaryColor),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ]),
          ),
        ));
  
}}