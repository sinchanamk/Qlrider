import 'package:flutter/material.dart';
import 'package:qlriderr/screens/login.dart';

import 'Widgets/scalepage.dart';
import 'consts/const.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation myAnimation; 
  double _width = 0.0;
  double _hight = 0.0;

  @override
  void didChangeDependencies() {
    _width = MediaQuery.of(context).size.width;
    _hight = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }
  
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5)
        )..repeat(reverse:false,);

        
    myAnimation =
        Tween<double>(begin: 200, end: 180).animate(controller);
    controller.forward().whenComplete(() {
      controller.reverse();
      });
   
  }
 late final AnimationController _controller = AnimationController(
    duration:  Duration(seconds:5),
    vsync: this,
  )..repeat(reverse:false);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(0.5,0.0),
    end: const Offset(-0.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  ));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
      return
    AnimatedBuilder(
      animation: myAnimation,
      builder: (context, widget) {
   
     
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: _hight,
              child: Stack(
                children: [
                  Container(
                    height: _hight / 1.1,
                   // width: _width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/h1.jpg",),),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 110),
                    height: _hight / 2,
                    width: _width,
                    child:  SlideTransition(
      position: _offsetAnimation,
                   child: Container(decoration:
                    BoxDecoration(
                      
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/cover.png",))),
                  ),),),
                  Container(
                    margin:
                        EdgeInsets.only(left: 10, right: 0, top: _hight / 1.5),
                    height: 60,
                    width: myAnimation.value,
                     child:  Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/name.png",))),
                  )),
                  InkWell(
                    onTap: () {
                     Navigator.push(context, 
                     MaterialPageRoute(builder: (context)=>LoginPage()));},
                     
                  
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(height: _hight*.065,width: _width*.4,alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: ColorsConsts.primaryColor),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                             // fontSize: myAnimation.value,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );});
  }
}
