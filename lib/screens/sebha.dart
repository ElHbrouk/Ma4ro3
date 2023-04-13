import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calculator_screen.dart';

class Sebha extends StatefulWidget {
  const Sebha({Key? key}) : super(key: key);

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        width: 230.w,
        backgroundColor: const Color(0xffD4ED26),
        child: Padding(
          padding: EdgeInsets.only(top: 50.0.sp),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Vector.png',
                height: 75.h,
                width: 75.w,
              ),
              Container(
                margin: EdgeInsets.only(top: 40.sp),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text(
                        textAlign: TextAlign.end,
                        'حساب أجرة موحده',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(
                        textAlign: TextAlign.end,
                        'حساب أجرة مختلفة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.calculate_outlined),
                      title: Text(
                        textAlign: TextAlign.end,
                        'الآلة الحاسبة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.pan_tool_sharp),
                      title: Text(
                        textAlign: TextAlign.end,
                        ' دعاء السفر',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.front_hand),
                      title: Text(
                        textAlign: TextAlign.end,
                        'تسبيح',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Sebha(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.gamepad),
                      title: Text(
                        textAlign: TextAlign.end,
                        ' X/O لعبة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.star),
                      title: Text(
                        textAlign: TextAlign.end,
                        'قيم التطبيق',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.chat),
                      title: Text(
                        textAlign: TextAlign.end,
                        ' تواصل معنا',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 30.sp),
              child: IconButton(
                onPressed: () {
                  return scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
                iconSize: 31.sp,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/Frame.png',
                  width: 315.w,
                  height: 665.77.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تسبيحة',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        'تصفير',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsetsDirectional.only( bottom: 110.sp,end: 110.sp),
                  child: Row(
                    children: [
                      Text(
                        '$number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 48.sp,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(bottom: 225.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'السبحة',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsetsDirectional.only(top: 110.sp, start: 155.sp),
                  child: IconButton(
                    iconSize: 40.sp,
                    color: Colors.black.withOpacity(0),
                    onPressed: () {
                      setState(() {
                        number = 0;
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsetsDirectional.only(top: 250.sp),
                  child: IconButton(
                    iconSize: 115.sp,
                    color: Colors.black.withOpacity(0),
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
