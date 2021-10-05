import 'package:flutter/material.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/payments.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
            child: Column(children: [
      Container(
        height: height / 4,
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
                      padding: EdgeInsets.only(top: 32.0, left: 10, right: 20),
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
            const Padding(
              padding: EdgeInsets.only(top: 50, right: 133),
              child: Text(
                'Registration List',
                style: TextStyle(
                    color: ColorsConsts.whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ),
      ),
      Container(
          margin: const EdgeInsets.only(
            top: 10,
          ),
          height: MediaQuery.of(context).size.height * .12,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.green[100],
                        radius: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.done_sharp,
                              color: Colors.green[900],
                              size: 26,
                            )),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 22),
                          child: Text(
                            'Profile Picture',
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,left: 20
                          ),
                          child: Text(
                            'Image verified',
                            style: TextStyle(color: Colors.green[300],fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))),
      Container(
          margin: const EdgeInsets.only(
            
          ),
          height: MediaQuery.of(context).size.height * .12,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.green[100],
                        radius: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.done_sharp,
                              color: Colors.green[900],
                              size: 26,
                            )),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 25),
                          child: Text(
                            'Driving License',
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,left: 10,
                          ),
                          child: Text(
                            'Image verified',
                            style: TextStyle(color: Colors.green[300],fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))),
      Container(
          margin: const EdgeInsets.only(
          ),
          height: MediaQuery.of(context).size.height * .12,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.green[100],
                        radius: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.done_sharp,
                              color: Colors.green[900],
                              size: 26,
                            )),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 25),
                          child: Text(
                            'Vehicle Registration',
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 13),
                          child: Text(
                            'Image verified',
                            style: TextStyle(color: Colors.green[300],fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))),
               Container(
          margin: const EdgeInsets.only(
          ),
          height: MediaQuery.of(context).size.height * .12,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow[300],
                        radius: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.warning_amber_sharp,
                              color: Colors.yellow[900],
                              size: 27,
                            )),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 25),
                          child: Text(
                            'PAN Card',
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,left: 30
                          ),
                          child: Text(
                            'Processing',
                            style: TextStyle(color: Colors.yellow[800],fontSize: 13,fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))),
              
      Container(
          margin: const EdgeInsets.only(
          ),
          height: MediaQuery.of(context).size.height * .12,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.red[200],
                        radius: 25,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.dangerous,
                              color: Colors.red[800],
                              size: 26,
                            )),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 13),
                          child: Text(
                            'ADHAR Card',
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,left: 28
                          ),
                          child: Text(
                            'Image Rejected',
                            style: TextStyle(color: Colors.red[800],fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width:30,),
                    InkWell(
                      onTap: () {
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(right:15),
                         
                        height: height*.05,width: width*.25,alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: ColorsConsts.primaryColor),
                          child: Text(
                            'Re-upload',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
         

                  ],
                ),
              ))),
              SizedBox(height: 40,),
             InkWell(
                      onTap: () {
                    Navigator.push(context,
                   // BouncyPageRoute(widget: Payments()));
                    MaterialPageRoute(builder: (context)=>Payments()));
                       },
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(right:15),
                         
                        height: height*.065,width: width*.65,alignment: Alignment.center,
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
         
 
    ])));
  }
}
