// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 230, 189),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            primary: true,
            floating: true,
            pinned: true,
            collapsedHeight: 90,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            expandedHeight: 200,
            backgroundColor: Colors.amber.shade600,
            leading: Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 34,
              ),
            ),
            flexibleSpace: SafeArea(
              child: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                title: SingleChildScrollView(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: CircularPercentIndicator(
                            progressColor: Color(0xFFE57373),
                            backgroundColor: Colors.orange,
                            radius: 36,
                            lineWidth: 3.0,
                            percent: 0.75,
                            center: CircleAvatar(
                              backgroundColor: Color(0xFFEF5350),
                              radius: 30,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE6Nv1N3wlJjVfl_9_Lz-TUeLKFIdD_XsPJw&usqp=CAU'),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ' John doe',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 15, 0),
                child: Icon(
                  Icons.search,
                  size: 32,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
              child: Container(
            height: 900,
            color: Color.fromARGB(255, 253, 230, 189),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 2, 0, 0),
                      child: Text(
                        "My tasks",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 10, 0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff309397),
                        child: IconButton(
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  child: Row(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffe46472),
                            child: Icon(
                              Icons.watch_later_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "To Do",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text("5 task now . 1 is started ")
                          ],
                        )
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  child: Row(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffe46472),
                            child: Icon(
                              Icons.refresh_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "In Progress",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text("1 task now . 1 is started ")
                          ],
                        )
                      ],
                    )
                  ]),
                ),
                SizedBox(height: 20),
                Container(
                  height: 45,
                  child: Row(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffe46472),
                            child: Icon(
                              Icons.skip_next_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Complated",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text("18 task now . 18 is complated ")
                          ],
                        )
                      ],
                    )
                  ]),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Text(
                        "Active Projects",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: CircularPercentIndicator(
                              radius: 60.0,
                              lineWidth: 5.0,
                              percent: 0.25,
                              center: Text("25%"),
                              progressColor: Colors.green,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Medical app",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "9 hour of progress",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xff309397),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 250,
                      width: 170,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: CircularPercentIndicator(
                              radius: 60.0,
                              lineWidth: 5.0,
                              percent: 0.75,
                              center: new Text("75%"),
                              progressColor: Colors.green,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sport app",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "40 hour of progress",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffe46472),
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 250,
                      width: 170,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: CircularPercentIndicator(
                              radius: 60.0,
                              lineWidth: 5.0,
                              percent: 0.5,
                              center: new Text("50%"),
                              progressColor: Colors.green,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Food app",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "4 hour of progress",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 19, 126, 248),
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 250,
                      width: 170,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: CircularPercentIndicator(
                              radius: 60.0,
                              lineWidth: 5.0,
                              percent: 0.75,
                              center: new Text("75%"),
                              progressColor: Color.fromARGB(255, 43, 168, 47),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Programming  app",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "50 hour of progress",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 198, 19),
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 250,
                      width: 170,
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
