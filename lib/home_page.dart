import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: height,
            width: width,
            child: Stack(
              children: [
                Positioned(
                  // vectorhSR (1:51)
                  left: 202.11,
                  top:  -20.21,
                  child: SizedBox(
                    width:  227,
                    height:  266,
                    child:
                    Image.asset(
                      'assets/images/vector.png',
                      width:  227.96,
                      height:  266.54,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 42,
                        height: 42,
                        child: Image.asset('assets/images/drawer.png'),
                      ),
                      Container(
                        height: 42.55,
                        width: 253,
                        decoration:  BoxDecoration (
                          color:  const Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(10),
                          boxShadow:  const [
                            BoxShadow(
                              color:  Color(0x26000000),
                              offset:  Offset(0, 4),
                              blurRadius:  3,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // iconZN9 (1:55)
                              margin:  const EdgeInsets.fromLTRB(13.15, 0, 11.92, 4.67),
                              width:  13.93,
                              height:  13.93,
                              child:
                              Image.asset(
                                'assets/images/search.png',
                                width:  13.93,
                                height:  13.93,
                              ),
                            ),
                            const Text(
                              // searchGGZ (1:54)
                              'Search...',
                              style: TextStyle(
                                fontSize:  14,
                                fontWeight:  FontWeight.w400,
                                height:  1.3625,
                                color:  Color(0xffcbcfd4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.draw),
                    ],
                  ),
                ),
                const Positioned(
                  top: 62,
                    left: 74,
                    child: Text(
                      'REFINE SEARCH BY',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                      ),

                    ),
                ),
                const Positioned(
                  top: 62,
                    left: 168,
                    child: Text(
                      'Calories,Diet,Ingredients',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                      ),

                    ),
                ),
                Positioned(
                  top: 62,
                    left: 297,
                    child: Container(
                      width: 20,
                        height: 20,
                        child: Image.asset('assets/images/arradown.png'),
                    ),
                ),
                Positioned(
                  top: 93,
                  left: 25,
                  child: Container(
                    width: 326,
                    height: 164,
                    // color: Colors.amber,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 15.0),
                              width: 147,
                              child: const Text(
                                  'Wok-fried Duck & Oyster Sauce',
                                style: TextStyle(
                                  color: Color(0xff3C444C),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10.0),
                              width: 132,
                              child: const Text(
                                  'See full recipe on: BBC Good Food',
                                style: TextStyle(
                                  color: Color(0xff3C444C),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24,
                                      width: 24,
                                      child: Image.asset('assets/images/share.png'),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 24,
                                      width: 24,
                                      child: Image.asset('assets/images/share.png'),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Image.asset('assets/images/meal.png'),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 250,
                    left: 24,
                    child: Text(
                        'Health Labels:',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        color: Color(0xffCBCFD4),
                      ),
                    ),
                ),
                Positioned(
                  top: 268,
                    left: 22,
                    child: Container(
                      width: 86,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Center(
                        child: Text(
                            'Mediterranean',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color(0xff3C444C),
                          ),
                        ),
                      ),
                    ),
                ),
                Positioned(
                  top: 268,
                    left: 113,
                    child: Container(
                      width: 86,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Center(
                        child: Text(
                            'Peanut-Free',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color(0xff3C444C),
                          ),
                        ),
                      ),
                    ),
                ),
                Positioned(
                  top: 268,
                    left: 205,
                    child: Container(
                      width: 86,
                      height: 18,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Center(
                        child: Text(
                            'Tree-Nut-Free',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color(0xff3C444C),
                          ),
                        ),
                      ),
                    ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
