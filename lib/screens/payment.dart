import 'package:flutter/material.dart';
import 'package:qlriderr/consts/const.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
        height: height / 8,
        width: width,
        decoration: BoxDecoration(color: ColorsConsts.primaryColor),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              padding: const EdgeInsets.only(top: 30, left: 10),
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
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Text(
                'Payments',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorsConsts.whiteColor,
                    fontSize: 21),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top:height*.04, left:height*.099,),
                  child: Icon(
                Icons.help_outline_outlined,
                color: ColorsConsts.whiteColor,
                size: 27,
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top:height*.04, left:height*.01,right: height*.01),
                  child: Text(
                'Support',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: ColorsConsts.whiteColor,
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
      Row(children: [
        Padding(
          padding: EdgeInsets.only(left: 28, top: 20),
          child: ClipRect(
              child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 70,
              width: 70,
              child: Card(
                  shape: StadiumBorder(
                      side:
                          BorderSide(color: ColorsConsts.whiteColor, width: 5)),
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset('assets/gpay.png'))),
            ),
          )),
        ),
        Padding(
          padding: EdgeInsets.only(left: height * .03, top: height * .02,right: height*.01),
          child: Text(
            'Gpay',
            style: TextStyle(
                color: ColorsConsts.blackColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: height * .10, top: height * .02),
          child: OutlineButton(
            shape: StadiumBorder(),
            borderSide: BorderSide(width: 1.5, color: ColorsConsts.primaryColor),
            onPressed: () {
              },
            child: Text(
              'Link',
              style: TextStyle(
                  color: ColorsConsts.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        )
      ]),
      Row(children: [
        Padding(
          padding: EdgeInsets.only(left: 24, top: 20),
          child: ClipRect(
              child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 70,
              width: 70,
              child: Card(
                  shape: StadiumBorder(
                      side:
                          BorderSide(color: ColorsConsts.whiteColor, width: 5)),
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset('assets/razor.jpg'))),
            ),
          )),
        ),
        Padding(
          padding: EdgeInsets.only(left: height * .025, top: height * .02,),
          child: Text(
            'Razor Pay',
            style: TextStyle(
                color: ColorsConsts.blackColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: height * .070, top: height * .02,right: height*.01),
          child: OutlineButton(
            shape: StadiumBorder(),
            borderSide: BorderSide(width: 1.5, color: ColorsConsts.primaryColor),
            onPressed: () {},
            child: Text(
              'Link',
              style: TextStyle(
                  color: ColorsConsts.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        )
      ]),

      ])));
  }
}
