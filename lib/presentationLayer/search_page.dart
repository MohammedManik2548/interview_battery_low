import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_page.dart';
class SearchPage extends StatelessWidget {

   SearchController controller = Get.put(SearchController());
  static const routeName = '/search_page';
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
              children: [
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
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: TextFormField(
                            onChanged: (v) {},
                            //style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ),
                      const Icon(Icons.menu),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: height,
                    child: GridView.builder(
                        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: 10,
                        itemBuilder: (c,i){
                          return InkWell(
                            onTap: (){
                              Get.to(() => const DetailsPage());
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10,right: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 160,
                                    margin: const EdgeInsets.all(5.0),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/checkenTeriyaki.jpeg'),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      const Center(
                                        child: Row(
                                          children: [
                                            Text(
                                              '510',
                                              style: TextStyle(
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            Text(
                                              'CAL',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 15,
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '3',
                                            style: TextStyle(
                                                color: Colors.green,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'INGR',
                                            style: TextStyle(
                                                color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
