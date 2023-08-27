import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_battery_low/businessLogicLayer/search_controller.dart';
import 'details_page.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/search_page';
  final SearchPageController controller = Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double w = MediaQuery.of(context).size.width / baseWidth;
    double f = w * 0.97;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width,
          height: height,
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
                          onChanged: (v) {
                            controller.getRecipeData(v);
                          },
                          //style: TextStyle(color: Colors.white),
                          //controller: controller.searchEditingController,
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
                    Icon(Icons.menu,size: 30*w,),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => Expanded(
                  child: controller.chickenList.value.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                          // child: Text(
                          //   'No Result',
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        )
                      : GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                          ),
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: controller.chickenList.value.length ?? 0,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (c, i) {
                            var result = controller.chickenList.value![i];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsPage(
                                            hits: controller
                                                .chickenList.value![i])));
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    border: Border.all(color: Colors.grey.withOpacity(0.3))),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 150 * w,
                                          width: 155 * w,
                                          margin: const EdgeInsets.all(5.0),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      '${result.recipe?.image.toString()}'),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Positioned(
                                          left: 10 * w,
                                          top: 10 * w,
                                          child: SizedBox(
                                            width: 155 * w,
                                            height: 150 * w,
                                            child: Text(
                                              result.recipe!.label ?? '',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14 * f,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 10 * w,
                                          bottom: 10 * w,
                                          child: Text(
                                            result.recipe!.source ?? '',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14 * f,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Center(
                                          child: FittedBox(
                                            child: Row(
                                              children: [
                                                Text(
                                                  result.recipe!.calories?.toInt().toString() ?? '',
                                                  style: const TextStyle(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  'CAL',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
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
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
