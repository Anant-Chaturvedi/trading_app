import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'markets.dart';
import 'tab_bar.dart';

final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();

// late Size mq;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Anant Chaturvedi',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: const Icon(
          CupertinoIcons.home,
          color: Colors.black,
        ),
        actions: [
          const Icon(
            CupertinoIcons.search,
            color: Colors.black,
          ),
          SizedBox(width: mq.width * .025),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.bell_fill,
              color: Colors.black,
            ),
          )
        ],
      ),
      // bottomNavigationBar: ConvexAppBar(
      //   elevation: 0,
      //   style: TabStyle.fixedCircle,
      //   items: const [
      //     TabItem(icon: Icon(Icons.home)),
      //     TabItem(icon: Icon(Icons.pie_chart)),
      //     TabItem(
      //         icon: Icon(
      //       CupertinoIcons.arrow_right_arrow_left_circle_fill,
      //       color: Colors.green,
      //       size: 55,
      //     )),
      //     TabItem(icon: Icon(CupertinoIcons.slider_horizontal_3)),
      //     TabItem(icon: Icon(CupertinoIcons.person))
      //   ],
      //   backgroundColor: Colors.white,
      // ),
      body: Stack(children: [
        Positioned(
            top: mq.height * .03,
            left: mq.width * .07,
            child: Container(
              alignment: Alignment.center,
              width: mq.width * .85,
              // padding: EdgeInsets.all(32),
              height: mq.height * .23,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 21, 66, 102)),
              child: Stack(children: [
                Positioned(
                  left: mq.width * .04,
                  top: mq.height * .04,
                  child: const Text(
                    'Portfolio Value',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white60,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Positioned(
                  left: mq.width * .04,
                  top: mq.height * .07,
                  child: const Text(
                    "\$15,136.32",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: mq.width * .42,
                  top: mq.height * .07,
                  child: Row(
                    children: const [
                      Text(
                        "2.11%",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        CupertinoIcons.arrow_up,
                        color: Colors.green,
                        size: 12,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: mq.width * .04,
                    top: mq.height * .15,
                    height: mq.height * .035,
                    width: mq.width * .20,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent.shade400),
                      child: const Text(
                        'Deposit',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                Positioned(
                    left: mq.width * .28,
                    top: mq.height * .15,
                    height: mq.height * .035,
                    width: mq.width * .20,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white60)),
                      child: const Text(
                        'Withdraw',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ]),
            )),
        Positioned(
          left: mq.width * .06,
          top: mq.height * .30,
          child: const Text(
            'Watchlist',
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 21, 66, 102),
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          right: mq.width * .06,
          top: mq.height * .30,
          child: Text(
            'See All',
            style: TextStyle(
                fontSize: 20,
                color: Colors.greenAccent.shade400,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
            left: mq.width * .04,
            top: mq.height * .33,
            width: mq.width * .95,
            height: mq.height * .25,
            child: const MarketList()),
        Positioned(
            left: mq.width * .06,
            top: mq.height * .6,
            child: const Text(
              'Stocks Activity',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        Positioned(
          top: mq.height * .65,
          left: mq.width * .03,
          height: mq.height * .1,
          width: mq.width,
          child: Padding(
            padding: EdgeInsets.only(right: mq.width * .055),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(children: [
                ListTile(
                  leading: SizedBox(
                      height: mq.height * .05,
                      width: mq.width * .11,
                      child: Image.asset('assets/images/nvidia.png')),
                  title: const Text(
                    'NVDA',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  subtitle: const Text(
                    'Nvidia',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                Positioned(
                  top: mq.height * .044,
                  right: mq.width * .37,
                  child: Wrap(
                    children: [
                      Icon(
                        CupertinoIcons.up_arrow,
                        size: 14,
                        color: Colors.greenAccent.shade400,
                      ),
                      Text(
                        '0.14%',
                        style: TextStyle(
                            color: Colors.greenAccent.shade400,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: mq.height * .015,
                    right: mq.width * .39,
                    child: Text(
                      '25.94',
                      style: TextStyle(
                          color: Colors.greenAccent.shade400,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: mq.height * .015,
                    right: mq.width * .02,
                    child: const Text(
                      '\$227.36',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: mq.height * .044,
                    right: mq.width * .02,
                    child: const Text(
                      '10 Shares',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ))
              ]),
            ),
          ),
        ),
        // Positioned(
        //     left: mq.width * .06,
        //     top: mq.height * .4,
        //     // height: mq.height * .019,
        //     child: const Stock())
      ]),
    );
  }
}
