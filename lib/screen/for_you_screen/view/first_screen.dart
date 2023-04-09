import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/for_you_screen_provider.dart';

class For_you_screen extends StatefulWidget {
  const For_you_screen({Key? key}) : super(key: key);

  @override
  State<For_you_screen> createState() => _For_you_screenState();
}
For_screen_provider?for_screen_providert,for_screen_providerf;
class _For_you_screenState extends State<For_you_screen> {
  @override
  Widget build(BuildContext context) {
    for_screen_providerf= Provider.of(context,listen: false);
    for_screen_providert= Provider.of(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: double.infinity,
                            child: Image.asset(
                                "${for_screen_providerf!.Images[index]}",
                                fit: BoxFit.cover),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                    "${for_screen_providerf!.Image[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "${for_screen_providerf!.name[index]}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9,
                      crossAxisCount: 1,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: double.infinity,
                              child: Image.asset(
                                "${for_screen_providerf!.Images2[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 50,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset(
                                      "${for_screen_providerf!.Images2[index]}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text("${for_screen_providerf!.name2[index]}")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: double.infinity,
                            child: Image.asset(
                              "${for_screen_providerf!.Images3[index]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                    "${for_screen_providerf!.Image3[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "${for_screen_providerf!.name3[index]}",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
