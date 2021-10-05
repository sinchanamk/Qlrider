import 'package:flutter/material.dart';
import 'package:qlriderr/consts/const.dart';

class MyRides extends StatefulWidget {
  const MyRides({ Key? key }) : super(key: key);

  @override
  _MyRidesState createState() => _MyRidesState();
}

class _MyRidesState extends State<MyRides> {
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
    return Scaffold(appBar: PreferredSize(preferredSize: Size.fromHeight(height/11),
      child: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
            height: height / 7.1,
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
                        size: 28,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 18),
                  child: Text(
                    'My Rides',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsConsts.whiteColor,
                        fontSize: 20),
                  ),
                ),
               Padding(
                  padding: EdgeInsets.only(top:height*.04, left:height*.12,),
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
                ),
              ],
            ),
            ),),
    ),
        body: ListView.builder(itemBuilder: (context,index){
         shrinkWrap: true;
           physics: const NeverScrollableScrollPhysics();
           itemCount: 8;
          
        return Container(
          padding: const EdgeInsets.only(right:10,top: 20,left: 10),
          
          child: SizedBox(height: 150,width: 550,
                     child: 
                     Card( elevation: 20,
                       shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0),
                     
                                      ),
                                     
                                   color: Colors.white,
                                   child: Padding(
                                     padding: const EdgeInsets.all(18.0),
                                     child: Column(children: [
                                       
                                       Row(
                      children: [
                        Icon(Icons.circle,color: ColorsConsts.primaryColor,size: 14,),
                        Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Hebbal',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        )
                      ],
                                       ),
                     Row(
                      children: [
                        Icon(Icons.circle,color: Colors.lightGreen,size: 14,),
                        Padding(
                            padding: const EdgeInsets.only(left:8.0,top: 8),
                            child: Text('Doddaballapur',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                     ),
                        
                      ],
                                       ),
                                       Padding(
                      padding: const EdgeInsets.only(right:170,top: 10),
                               child: Text('31/02/2021',style: TextStyle(fontSize: 15,
                               ),),
                                     
                                       ),
                                       Padding(
                     padding: const EdgeInsets.only(right:190,top: 5),
                       child: Text('11.30 AM',style: TextStyle(fontSize: 13,
                      ),),
                                   
                                       ),
                                  
                                     ]),))));}));
      }
      }
