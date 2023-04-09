import 'package:flutter/material.dart';
import 'package:play_store/screen/topcharts_screen/provider/Top_charts_provider.dart';
import 'package:provider/provider.dart';

class top_charts_screen extends StatefulWidget {
  const top_charts_screen({Key? key}) : super(key: key);

  @override
  State<top_charts_screen> createState() => _top_charts_screenState();
}
Top_provider?top_providert,top_providerf;
class _top_charts_screenState extends State<top_charts_screen> {
  @override
  Widget build(BuildContext context) {
    top_providerf=Provider.of<Top_provider>(context,listen: false);
    top_providert=Provider.of<Top_provider>(context,listen: true);
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
                                "${top_providerf!.apps[index]}",
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
                                    "${top_providerf!.app[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "${top_providerf!.names[index]}",
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
                                "${top_providerf!.apps2[index]}",
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
                                      "${top_providerf!.app2[index]}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text("${top_providerf!.names2[index]}")
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
                              "${top_providerf!.apps3[index]}",
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
                                    "${top_providerf!.app3[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "${top_providerf!.names3[index]}",
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

