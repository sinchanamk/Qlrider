import 'package:flutter/material.dart';
import 'package:qlriderr/consts/const.dart';
import 'package:qlriderr/screens/login.dart';
class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
      appBar: PreferredSize(preferredSize: Size.fromHeight(height/11),
      child: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
            height: height / 7.4,
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
                    'Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsConsts.whiteColor,
                        fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 80),
                  child: Icon(
                    Icons.help_outline_outlined,
                    color: ColorsConsts.whiteColor,
                    size: 27,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 20, right: 30),
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
    body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18,top: 20),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/11.png',
                        ),
                        iconSize: 45,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,top: 20),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorsConsts.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              
              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/22.png',
                      ),
                      iconSize: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Favorites',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorsConsts.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/2.jpg',
                      ),
                      iconSize: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Preferences',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorsConsts.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/8.jpg',
                      ),
                      iconSize: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'About',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorsConsts.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(children: [
                    IconButton(
                      onPressed: () {
                         Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                                        526;
           
                      },
                      icon: Image.asset(
                        'assets/33.png',
                      ),
                      iconSize: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorsConsts.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ])),
        ],
      ),
    ),
    );
  }
}