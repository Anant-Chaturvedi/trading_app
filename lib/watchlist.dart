import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'home_screen.dart';
import 'markets.dart';
import 'tab_bar.dart';

class WatchList extends StatefulWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
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
