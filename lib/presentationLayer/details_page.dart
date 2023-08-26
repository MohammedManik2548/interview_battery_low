import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:interview_battery_low/dataLayer/models/Hits.dart';

import '../businessLogicLayer/details_controller.dart';

class DetailsPage extends StatelessWidget {
  final Hits hits;
  static const routeName = '/details_page';
  final DetailsController controller = Get.put(DetailsController());
  DetailsPage({super.key, required this.hits});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double w = MediaQuery.of(context).size.width / baseWidth;
    double f = w * 0.97;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 260 * w,
                width: width,
                child: Stack(
                  children: [
                    Positioned(
                      left: 202.11 * w,
                      top: -25.21 * w,
                      child: SizedBox(
                        width: 227 * w,
                        height: 266 * w,
                        child: Image.asset(
                          'assets/images/vector.png',
                          width: 227.96 * w,
                          height: 266.54 * w,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 42 * w,
                            height: 42 * w,
                            child: Image.asset('assets/images/drawer.png'),
                          ),
                          Container(
                            height: 42.55 * w,
                            width: 253 * w,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // iconZN9 (1:55)
                                  margin: const EdgeInsets.fromLTRB(
                                      13.15, 0, 11.92, 4.67),
                                  width: 13.93 * w,
                                  height: 13.93 * w,
                                  child: Image.asset(
                                    'assets/images/search.png',
                                    width: 13.93 * w,
                                    height: 13.93 * w,
                                  ),
                                ),
                                Text(
                                  // searchGGZ (1:54)
                                  'Search...',
                                  style: TextStyle(
                                    fontSize: 14 * f,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625 * f / w,
                                    color: const Color(0xffcbcfd4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.menu_outlined,
                            size: 40 * w,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 62 * w,
                      left: 74 * w,
                      child: Text(
                        'REFINE SEARCH BY',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w300,
                          fontSize: 10 * f,
                          color: const Color(0xff747D88),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 62 * w,
                      left: 165 * w,
                      child: Text(
                        'Calories,Diet,Ingredients',
                        style: GoogleFonts.getFont('Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 10 * f,
                            color: const Color(0xff747D88)),
                      ),
                    ),
                    Positioned(
                      top: 58 * w,
                      left: 297 * w,
                      child: SizedBox(
                        width: 20 * w,
                        height: 20 * w,
                        child: const Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    Positioned(
                      top: 93 * w,
                      left: 25 * w,
                      child: SizedBox(
                        width: 326 * w,
                        height: 164 * w,
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
                                  width: 147 * w,
                                  child: Text(
                                    'Wok-fried Duck & Oyster Sauce',
                                    style: TextStyle(
                                      color: const Color(0xff3C444C),
                                      fontSize: 15 * f,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  width: 132 * w,
                                  child: Text(
                                    'See full recipe on: BBC Good Food',
                                    style: TextStyle(
                                      color: const Color(0xff3C444C),
                                      fontSize: 10 * f,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 24 * w,
                                        width: 24 * w,
                                        child: Image.asset(
                                            'assets/images/share.png'),
                                      ),
                                      const SizedBox(width: 10),
                                      SizedBox(
                                        height: 24 * w,
                                        width: 24 * w,
                                        child: Image.asset(
                                            'assets/images/share.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network('${hits.recipe!.image}'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Health Labels:',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 11 * f,
                        color: const Color(0xffCBCFD4),
                      ),
                    ),
                    SizedBox(
                      width: 5 * w,
                    ),
                    SizedBox(
                      width: 325 * w,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                            childAspectRatio: 4,
                          ),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: hits.recipe!.healthLabels!.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (c, i) {
                            return Container(
                              width: 86 * w,
                              height: 18 * w,
                              decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Text(
                                  hits.recipe!.healthLabels![i],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9 * f,
                                    color: const Color(0xff3C444C),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 75 * w,
                      height: 17 * w,
                      child: Text(
                        'Cuisine Type:',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 11 * w,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffcbcfd4),
                        ),
                      ),
                    ),
                    ///cusine

                    SizedBox(
                      width: 325 * w,
                      child: GridView.builder(
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                            childAspectRatio: 4,
                          ),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: hits.recipe!.cuisineType!.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (c, i) {
                            return Container(
                              width: 86 * w,
                              height: 18 * w,
                              decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Text(
                                  hits.recipe!.healthLabels![i],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9 * f,
                                    color: const Color(0xff3C444C),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),

                    // SizedBox(
                    //   width: 47 * w,
                    //   height: 18 * w,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(8 * w),
                    //       color: const Color(0xffd9d9d9),
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'Italian',
                    //         style: GoogleFonts.getFont(
                    //           'Poppins',
                    //           fontSize: 10 * w,
                    //           fontWeight: FontWeight.w500,
                    //           color: const Color(0xff3c444c),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 10),

                    ///under line text
                    SizedBox(
                      width: 97 * w,
                      height: 24 * w,
                      child: Text(
                        'Ingredients',
                        style: GoogleFonts.getFont('Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16 * f,
                            color: const Color(0xff3C444C)),
                      ),
                    ),

                    ///under line color
                    Container(
                      width: 97 * w,
                      height: 2 * w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFEC915),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    const SizedBox(height: 5),

                    ///list view
                    SizedBox(
                      height: 97 * w,
                      width: double.infinity,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: hits.recipe!.ingredients!.length,
                          itemBuilder: (c, i) {
                            return Container(
                              decoration: BoxDecoration(
                                //color: Colors.green,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              width: 90 * w,
                              height: 90 * w,
                              margin: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xff7def03),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0)),
                                    ),
                                    width: 90 * w,
                                    height: 97 * w / 2,
                                    child: Center(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        hits.recipe!.ingredients![i].weight!
                                                .toInt()
                                                .toString() ??
                                            '',
                                        style: GoogleFonts.getFont('Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16 * f,
                                            color: const Color(0xff3C444C)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xff7def03).withOpacity(0.6),
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0)),
                                    ),
                                    width: 90 * w,
                                    height: 97 * w / 3,
                                    child: Center(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        hits.recipe!.ingredients![i]
                                                .foodCategory ??
                                            '',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12 * f,
                                          color: const Color(0xff3C444C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    const SizedBox(height: 10),

                    ///under line text
                    SizedBox(
                      width: 97 * w,
                      height: 24 * w,
                      child: Text(
                        'Preparation',
                        style: GoogleFonts.getFont('Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16 * f,
                            color: const Color(0xff3C444C)),
                      ),
                    ),

                    ///under line color
                    Container(
                      width: 97 * w,
                      height: 2 * w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFEC915),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Instructions on',
                          style: GoogleFonts.getFont('Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10 * f,
                              color: const Color(0xff747D88)),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'BBC FOOD',
                          style: GoogleFonts.getFont('Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 10 * f,
                              color: const Color(0xff747D88)),
                        ),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 71 * w,
                      height: 24 * w,
                      child: Text(
                        'Nutrition',
                        style: GoogleFonts.getFont('Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16 * f,
                            color: const Color(0xff3C444C)),
                      ),
                    ),

                    ///under line color
                    Container(
                      width: 65 * w,
                      height: 2 * w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFEC915),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 325 * w,
                      height: 75 * w,
                      decoration: const BoxDecoration(
                          color: Color(0xff7EEF03),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 38 * w,
                                      height: 23 * w,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '146',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14 * w),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'CAL/SERV',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14 * f,
                                        color: const Color(0xff3C444C),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //SizedBox(width: 5),
                            Container(
                              width: 1 * w,
                              height: 45 * w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: const Color(0xff3C444C),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 38 * w,
                                      height: 23 * w,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '7%',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14 * w),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'DAILY VALUE',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14 * f,
                                        color: const Color(0xff3C444C),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //SizedBox(width: 5),
                            Container(
                              width: 1 * w,
                              height: 45 * w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: const Color(0xff3C444C),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 38 * w,
                                      height: 23 * w,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '8',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14 * w),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'SERVINGS',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14 * f,
                                        color: const Color(0xff3C444C),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),
                    SizedBox(
                      width: 35 * w,
                      height: 21 * w,
                      child: Text(
                        'Tags',
                        style: GoogleFonts.getFont('Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 14 * f,
                            color: const Color(0xff3C444C)),
                      ),
                    ),

                    ///under line color
                    Container(
                      width: 35 * w,
                      height: 2 * w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFEC915),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    const SizedBox(height: 5),

                    ///Tag
                    SizedBox(
                      width: 325 * w,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                            childAspectRatio: 4,
                          ),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: hits.recipe!.dietLabels!.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (c, i) {
                            return SizedBox(
                              width: 325 * w,
                              child: Text(
                                hits.recipe!.dietLabels![i],
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black54,
                                ),
                              ),
                            );
                          }),
                    ),

                    const SizedBox(height: 10),
                    SizedBox(
                      width: 71 * w,
                      height: 24 * w,
                      child: Text(
                        'Nutrition',
                        style: GoogleFonts.getFont('Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16 * f,
                            color: const Color(0xff3C444C)),
                      ),
                    ),

                    ///under line color
                    Container(
                      width: 71 * w,
                      height: 2 * w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFEC915),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    const SizedBox(height: 10),

                    ///Detais Nu
                    Container(
                      width: 320 * w,
                      height: 52 * w,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * w, 4 * w),
                            blurRadius: 2 * w,
                          ),
                        ],
                      ),
                      ///Tab stack
                      child: Stack(
                        children: [
                          // _tabListView(context),
                          Container(
                            margin: const EdgeInsets.only(left: 5.0,top: 8.0,right: 10.0),
                            height: 40*w,
                             width: 320*w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.5)
                            ),
                            child: TabBar(
                              controller: controller.tabController,
                              indicator: BoxDecoration(
                                  color: const Color(0xff7EEF03),
                                  borderRadius: BorderRadius.circular(100.0),
                              ),
                              //padding: EdgeInsets.all(2.0),
                              indicatorSize: TabBarIndicatorSize.tab,
                              labelColor: Colors.black,
                              //indicatorWeight: 2,
                              unselectedLabelColor: Colors.black45,
                              tabs: [
                                SizedBox(
                                  width: 73*w,
                                    height: 35*w,
                                    child: Center(
                                        child: Text(
                                            hits.recipe!.totalNutrients!.fat!.label??'',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 9*w,
                                          ),
                                        ),
                                    )
                                ),
                                SizedBox(
                                  width: 73*w,
                                    height: 35*w,
                                    child: Center(
                                        child: Text(
                                            hits.recipe!.totalNutrients!.chocdf!.label??'',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 9*w
                                            )
                                        ),
                                    )
                                ),
                                SizedBox(
                                  width: 73*w,
                                    height: 35*w,
                                    child: Center(
                                        child: Text(
                                            hits.recipe!.totalNutrients!.procnt!.label??'',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 9*w
                                            )
                                        ),
                                    )
                                ),
                                SizedBox(
                                  width: 73*w,
                                    height: 40*w,
                                    child: Center(
                                        child: Text(
                                            hits.recipe!.totalNutrients!.chole!.label??'',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 7*w
                                            )
                                        ),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: SizedBox(
                              width: 42 * w,
                              height: 52 * w,
                              child: Image.asset(
                                'assets/images/subtract.png',
                                width: 42 * w,
                                height: 52 * w,
                              ),
                            ),
                          ),
                          const Positioned(
                            right: -1,
                            top: 18,
                            child: Icon(Icons.arrow_forward_ios_outlined,size: 18,),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    /// Tab view
                    SizedBox(
                      width: 325 * w,
                      height: 121 * w,
                      child: TabBarView(
                        controller: controller.tabController,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            margin: const EdgeInsets.only(right: 8),
                            width: 325 * w,
                            height: 121 * w,
                            decoration: const BoxDecoration(
                                color: Color(0xff7EEF03),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100.0),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            hits.recipe!.totalNutrients!.fat!.label??'',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16 * f,
                                              color: const Color(0xff0F0F0F),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15 * w,
                                            height: 15 * w,
                                            child: const Icon(Icons.keyboard_arrow_down),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cholesterol',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Trans',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Monounsaturated',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Polyunsaturated',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '7g',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A)),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '11%',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: 92 * w,
                                      height: 1 * w,
                                      color: const Color(0xff000000),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            margin: const EdgeInsets.only(right: 8),
                            width: 325 * w,
                            height: 121 * w,
                            decoration: const BoxDecoration(
                                color: Color(0xff7EEF03),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100.0),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            hits.recipe!.totalNutrients!.chocdf!.label??'',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16 * f,
                                              color: const Color(0xff0F0F0F),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15 * w,
                                            height: 15 * w,
                                            child: const Icon(Icons.keyboard_arrow_down),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cholesterol',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Trans',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Monounsaturated',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Polyunsaturated',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '7g',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A)),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '11%',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: 92 * w,
                                      height: 1 * w,
                                      color: const Color(0xff000000),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            margin: const EdgeInsets.only(right: 8),
                            width: 325 * w,
                            height: 121 * w,
                            decoration: const BoxDecoration(
                                color: Color(0xff7EEF03),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100.0),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            hits.recipe!.totalNutrients!.procnt!.label??'',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16 * f,
                                              color: const Color(0xff0F0F0F),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15 * w,
                                            height: 15 * w,
                                            child: const Icon(Icons.keyboard_arrow_down),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cholesterol',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Trans',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Monounsaturated',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Polyunsaturated',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '7g',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A)),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '11%',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: 92 * w,
                                      height: 1 * w,
                                      color: const Color(0xff000000),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            margin: const EdgeInsets.only(right: 8),
                            width: 325 * w,
                            height: 121 * w,
                            decoration: const BoxDecoration(
                                color: Color(0xff7EEF03),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100.0),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            hits.recipe!.totalNutrients!.chole!.label??'',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16 * f,
                                              color: const Color(0xff0F0F0F),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15 * w,
                                            height: 15 * w,
                                            child: const Icon(Icons.keyboard_arrow_down),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cholesterol',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Trans',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Monounsaturated',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Polyunsaturated',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '7g',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A)),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '11%',
                                          style: GoogleFonts.getFont('Poppins',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10 * f,
                                              color: const Color(0xff3A3A3A)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: 92 * w,
                                      height: 1 * w,
                                      color: const Color(0xff000000),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          '1g',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Text(
                                          '7%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10 * f,
                                            color: const Color(0xff3A3A3A),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
