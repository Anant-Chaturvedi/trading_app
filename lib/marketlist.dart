import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'markets.dart';
import 'tab_bar.dart';

class ListMarket extends StatefulWidget {
  const ListMarket({Key? key}) : super(key: key);

  @override
  State<ListMarket> createState() => _ListMarketState();
}

class _ListMarketState extends State<ListMarket> {
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
                Positioned(
                    top: mq.height * .035,
                    left: mq.width * .055,
                    child: Text(
                      'Dow Jones',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )),
                Positioned(
                    top: mq.height * .065,
                    left: mq.width * .055,
                    child: Text(
                      '\$33,819.56',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: mq.height * .092,
                    left: mq.width * .055,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_upward_sharp,
                          color: Colors.greenAccent.shade400,
                          size: 18,
                        ),
                        Text(
                          '0.25%',
                          style: TextStyle(
                              color: Colors.greenAccent.shade400,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
                Positioned(
                    top: mq.height * .12,
                    right: mq.width * .01,
                    left: mq.width * .01,
                    height: mq.height * .13,
                    // width: mq.width * .1,
                    // width: mq.width * .3,
                    child: Image.asset('assets/images/g2.jpg')),
                Positioned(
                    left: mq.width * .435,
                    top: mq.height * .075,
                    child: Container(
                      width: mq.width * .015,
                      height: mq.height * .1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                    )),
                Positioned(
                    left: mq.width * .335,
                    top: mq.height * .055,
                    height: mq.height * .035,
                    width: mq.width * .20,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: const Text(
                        '\$30,111.02',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
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
            color: Color.fromARGB(255, 21, 66, 102),
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            // margin: const EdgeInsets.all(15),

            // color: Colors.amber,
            // alignment: Alignment.center,
            child: Stack(
              children: [
                Positioned(
                    top: mq.height * .035,
                    left: mq.width * .055,
                    child: Text(
                      'S&P 500',
                      style: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.w500),
                    )),
                Positioned(
                    top: mq.height * .065,
                    left: mq.width * .055,
                    child: Text(
                      '\$4,605.38',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                Positioned(
                    top: mq.height * .092,
                    left: mq.width * .055,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_upward_sharp,
                          color: Colors.greenAccent.shade400,
                          size: 18,
                        ),
                        Text(
                          '0.25%',
                          style: TextStyle(
                              color: Colors.greenAccent.shade400,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
                Positioned(
                    top: mq.height * .12,
                    right: mq.width * .01,
                    left: mq.width * .01,
                    height: mq.height * .13,
                    // width: mq.width * .3,
                    child: Image.asset('assets/images/growth_red.png'))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
