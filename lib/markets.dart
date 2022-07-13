import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/marketlist.dart';

import 'home_screen.dart';
import 'package:flutter/material.dart';

import 'tab_bar.dart';

final GlobalKey<NavigatorState> fourthTabNavKey = GlobalKey<NavigatorState>();

// late Size mq;

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    // mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Markets',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: const Icon(
          CupertinoIcons.home,
          color: Colors.black,
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.bell_fill,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SizedBox(
        height: mq.height,
        child: Stack(children: [
          SizedBox(
              height: mq.height * .27, width: mq.width, child: ListMarket()),
          Positioned(
              top: mq.height * .3,
              child: Container(
                // alignment: Alignment.center,
                child: Stack(children: [
                  Positioned(
                      top: mq.height * .012,
                      left: mq.width * .15,
                      child: Text(
                        'Search...',
                        style: TextStyle(color: Colors.grey),
                      )),
                  Positioned(
                      top: mq.height * .012,
                      left: mq.width * .04,
                      child: Icon(Icons.search)),
                  Positioned(
                      top: mq.height * .012,
                      right: mq.width * .04,
                      child: Icon(CupertinoIcons.slider_horizontal_3))
                ]),
                margin: EdgeInsets.only(
                    left: mq.width * .039, right: mq.width * .025),
                width: mq.width * .9,
                height: mq.height * .05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey)),
              )),
          Positioned(
            top: mq.height * .38,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: const Text(
                      'Nvidia',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
          Positioned(
            top: mq.height * .49,
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
                    leading: Icon(
                      Icons.facebook,
                      color: Colors.indigo,
                      size: 40,
                    ),
                    title: const Text(
                      'Facebook',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: const Text(
                      'Facebook Inc.',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
          Positioned(
            top: mq.height * .6,
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
                    leading: Icon(
                      Icons.apple,
                      size: 40,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Apple',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: const Text(
                      'Apple Inc.',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    top: mq.height * .044,
                    right: mq.width * .37,
                    child: Wrap(
                      children: [
                        Icon(
                          CupertinoIcons.down_arrow,
                          size: 14,
                          color: Colors.red,
                        ),
                        Text(
                          '0.14%',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
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
                            color: Colors.red, fontWeight: FontWeight.bold),
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
          Positioned(
            top: mq.height * .71,
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
                    leading: Icon(
                      Icons.adobe,
                      size: 40,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      'Adobe',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: const Text(
                      'Adobe Inc.',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
        ]),
      ),
    );
  }
}

class MarketList extends StatefulWidget {
  const MarketList({Key? key}) : super(key: key);

  @override
  State<MarketList> createState() => _MarketListState();
}

class _MarketListState extends State<MarketList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          width: mq.width * .7,
          height: mq.height * .65,
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            // margin: const EdgeInsets.all(15),

            // color: Colors.amber,
            // alignment: Alignment.center,
            child: Stack(
              children: [
                ListTile(
                  leading: Container(
                      height: mq.height * .05,
                      width: mq.width * .11,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.shade300),
                      child: Icon(
                        Icons.adobe,
                        color: Colors.blue,
                      )),
                  title: Text(
                    'ADB',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  subtitle: Text(
                    'Adobe Inc.',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  trailing: Wrap(
                    children: [
                      Icon(
                        CupertinoIcons.up_arrow,
                        size: 14,
                        color: Colors.greenAccent.shade400,
                      ),
                      Text(
                        '5.49%',
                        style: TextStyle(
                            color: Colors.greenAccent.shade400,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: mq.height * .12,
                    left: mq.width * .025,
                    child: Text(
                      '33.49',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: mq.height * .16,
                    left: mq.width * .025,
                    child: Text(
                      '\$643.96',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
                Positioned(
                    top: mq.height * .12,
                    right: mq.width * .03,
                    height: mq.height * .09,
                    // width: mq.width * .3,
                    child: Image.asset('assets/images/graph.png'))
              ],
            ),
          ),
        ),
        SizedBox(
          width: mq.width * .04,
        ),
        SizedBox(
          width: mq.width * .7,
          height: mq.height * .65,
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            // margin: EdgeInsets.all(16),

            child: Stack(
              children: [
                ListTile(
                  leading: Container(
                      height: mq.height * .05,
                      width: mq.width * .11,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.shade300),
                      child: Icon(
                        Icons.facebook,
                        color: Colors.indigo,
                      )),
                  title: Text(
                    'Facebook',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  subtitle: Text(
                    'Facebook Inc.',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  trailing: Wrap(
                    children: [
                      Icon(
                        CupertinoIcons.up_arrow,
                        size: 14,
                        color: Colors.greenAccent.shade400,
                      ),
                      Text(
                        '8.49%',
                        style: TextStyle(
                            color: Colors.greenAccent.shade400,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: mq.height * .12,
                    left: mq.width * .025,
                    child: Text(
                      '63.49',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: mq.height * .16,
                    left: mq.width * .025,
                    child: Text(
                      '\$243.67',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
                Positioned(
                    top: mq.height * .12,
                    right: mq.width * .03,
                    height: mq.height * .09,
                    // width: mq.width * .3,
                    child: Image.asset('assets/images/graph.png'))
              ],
            ),
          ),
        ),
        SizedBox(
          width: mq.width * .04,
        ),
        SizedBox(
          width: mq.width * .7,
          height: mq.height * .65,
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                ListTile(
                  leading: Container(
                      height: mq.height * .05,
                      width: mq.width * .11,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.shade300),
                      child: Icon(
                        Icons.apple,
                        color: Colors.black,
                      )),
                  title: Text(
                    'Apple',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  subtitle: Text(
                    'Apple Inc.',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  trailing: Wrap(
                    children: [
                      Icon(
                        CupertinoIcons.up_arrow,
                        size: 14,
                        color: Colors.greenAccent.shade400,
                      ),
                      Text(
                        '10.49%',
                        style: TextStyle(
                            color: Colors.greenAccent.shade400,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: mq.height * .12,
                    left: mq.width * .025,
                    child: Text(
                      '39.49',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: mq.height * .16,
                    left: mq.width * .025,
                    child: Text(
                      '\$712.96',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
                Positioned(
                    top: mq.height * .12,
                    right: mq.width * .03,
                    height: mq.height * .09,
                    // width: mq.width * .3,
                    child: Image.asset('assets/images/graph.png'))
              ],
            ),
          ),
        )
      ],
    );
  }
}
