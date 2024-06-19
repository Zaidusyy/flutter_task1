import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/Constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selected_month = 'June';
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(backgroundColor: black2),
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.sort),
                color: Colors.white,
              );
            },
          ),
          title: const Text(
            'Admin Panel',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: black2,
          actions: [
            CircleAvatar(
              backgroundImage: const NetworkImage(
                'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
              backgroundColor: black3,
              radius: MediaQuery.of(context).size.width/20,
            ),
            const SizedBox(width: 15),
          ],
        ),
        backgroundColor: black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ExpandableCard(
                title: 'Community Analytics',
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyBoxCard(
                          title: 'Total Followers',
                          percentage: '7.2%',
                          isgrowth: true,
                          amount: '50K',
                          isselected: true,
                        ),
                        const Spacer(),
                        MyBoxCard(
                          title: 'Total Posts',
                          percentage: '5.2%',
                          isgrowth: false,
                          amount: '17.6K',
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        MyBoxCard(
                          title: 'Total Account Views',
                          percentage: '7.2%',
                          isgrowth: true,
                          amount: '200M',
                        ),
                        const Spacer(),
                        MyBoxCard(
                          title: 'Total Revenue',
                          percentage: '5.6%',
                          isgrowth: false,
                          amount: '\$260.8',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ExpandableCard(
                title: 'Membership & Subscription',
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyBoxCard(
                          title: 'Memberships',
                          percentage: '10%',
                          isgrowth: true,
                          amount: '\$120.1',
                          isborder: false,
                        ),
                        const Spacer(),
                        MyBoxCard(
                          title: 'Subscriptions',
                          percentage: '8.3%',
                          isgrowth: false,
                          amount: '\$55',
                          isborder: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    DefaultTabController(
                      length: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TabBar(
                                  labelStyle: TextStyle(fontSize: MediaQuery.of(context).size.width/30),
                                  labelPadding: const EdgeInsets.all(0),
                                  dividerColor: Colors.transparent,
                                  labelColor: Colors.white,
                                  indicatorColor: purple,
                                  unselectedLabelColor: Colors.white,
                                  tabs: const [
                                    Tab(text: 'Weekly'),
                                    Tab(text: 'Monthly'),
                                    Tab(text: 'Yearly'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 10,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: purple,
                                        size:
                                            MediaQuery.of(context).size.width /
                                                35,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Memberships',
                                        style: TextStyle(
                                            color: purple,
                                            fontFamily: 'Lato',
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                30),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.blue,
                                        size:
                                            MediaQuery.of(context).size.width /
                                                35,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Subscriptions',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontFamily: 'Lato',
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                30),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width / 1.5,
                            child: TabBarView(
                              children: [
                                LineChart(
                                  LineChartData(
                                    backgroundColor: black2,
                                    lineBarsData: [
                                      LineChartBarData(
                                        spots: [
                                          const FlSpot(0, 3),
                                          const FlSpot(2, 8.5),
                                          const FlSpot(4, 9.8),
                                          const FlSpot(6, 6.9),
                                          const FlSpot(8, 3.9),
                                          const FlSpot(10, 9.3),
                                          const FlSpot(12, 4.4),
                                          const FlSpot(14, 2),
                                          const FlSpot(16, 6.7),
                                          const FlSpot(18, 7.3),
                                          const FlSpot(20, 9.8),
                                          const FlSpot(22, 6.2),
                                          const FlSpot(25, 3.4),
                                        ],
                                        isCurved: true,
                                        color: purple,
                                        barWidth: 3,
                                        isStrokeCapRound: true,
                                        dotData: const FlDotData(show: false),
                                        belowBarData: BarAreaData(show: false),
                                      ),
                                      LineChartBarData(
                                        spots: [
                                          const FlSpot(0, 1),
                                          const FlSpot(2, 5.5),
                                          const FlSpot(4, 4.8),
                                          const FlSpot(6, 3.9),
                                          const FlSpot(8, 6),
                                          const FlSpot(10, 5.3),
                                          const FlSpot(12, 4.4),
                                          const FlSpot(14, 7),
                                          const FlSpot(16, 8.7),
                                          const FlSpot(18, 7.3),
                                          const FlSpot(20, 5.8),
                                          const FlSpot(22, 6.2),
                                          const FlSpot(25, 9.4),
                                        ],
                                        isCurved: true,
                                        color: Colors.blue,
                                        barWidth: 3,
                                        isStrokeCapRound: true,
                                        dotData: const FlDotData(show: false),
                                        belowBarData: BarAreaData(show: false),
                                      ),
                                    ],
                                    titlesData: FlTitlesData(
                                      leftTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          getTitlesWidget: (value, meta) {
                                            return Text(
                                              value.toString(),
                                              style: const TextStyle(
                                                color: purple,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          getTitlesWidget: (value, meta) {
                                            return Text(
                                              value.toString(),
                                              style: const TextStyle(
                                                color: purple,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    gridData: FlGridData(
                                      show: true,
                                      getDrawingHorizontalLine: (value) {
                                        return FlLine(
                                          dashArray: [2],
                                          color: Colors.white.withOpacity(0.2),
                                          strokeWidth: 1,
                                        );
                                      },
                                      getDrawingVerticalLine: (value) {
                                        return FlLine(
                                          dashArray: [2],
                                          color: Colors.white.withOpacity(0.2),
                                          strokeWidth: 1,
                                        );
                                      },
                                    ),
                                    borderData: FlBorderData(
                                      show: false,
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.2),
                                      ),
                                    ),
                                    minX: 0,
                                    maxX: 25,
                                    minY: 0,
                                    maxY: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ExpandableCard(
                  title: 'Milestones',
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Total coins earned : 2000 ',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                                fontSize:
                                    MediaQuery.of(context).size.width / 25),
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.yellow,
                            size: MediaQuery.of(context).size.width / 25,
                          ),
                          const Spacer(),
                          const SizedBox(
                            width: 30,
                          ),
                          //Dropdown
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selected_month,
                              items: months
                                  .map(
                                    (String month) => DropdownMenuItem(
                                      value: month,
                                      child: Text(
                                        month,
                                        style: TextStyle(
                                            fontFamily: 'Lato',
                                            color: purple,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                32),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  selected_month = value!;
                                });
                              },
                              dropdownColor: black2,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      MilestonesCard(
                        title: '7 points 7 weeks',
                        subtitle:
                            'Post each week for 7 weeks to maintain your streak',
                        icon: Icons.favorite,
                        iconcolor: Colors.lightBlue,
                        filledboax: 5,
                        isborder: true,
                      ),
                      MilestonesCard(
                        title: '7 Comments 7 weeks',
                        subtitle:
                            'Comment each week for 7 weeks to maintain your streak',
                        icon: Icons.videogame_asset,
                        iconcolor: Colors.yellowAccent,
                        filledboax: 2,
                        isborder: true,
                      ),
                      MilestonesCard(
                        title: 'Update Profile',
                        subtitle: 'Update Your Profile to 100%',
                        icon: Icons.shopping_bag,
                        iconcolor: Colors.redAccent,
                        filledboax: 7,
                        isborder: false,
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                        style: const ButtonStyle(
                          shadowColor: MaterialStatePropertyAll(Colors.white),
                            backgroundColor: MaterialStatePropertyAll(purple)),
                        onPressed: () {},
                        child: Text(
                          'Go to Dashboard',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Lato',fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width/25),
                        ),
                      ),
                    ],
                  )),
              ExpandableCard(title: 'Request a Function', child: Column(
                children: [
                  Align(alignment: Alignment.centerRight,child: Icon(Icons.add_box,color: purple,size: MediaQuery.of(context).size.width/15,)),
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            Expanded(
                              child: TabBar(
                                labelPadding: EdgeInsets.all(2),
                                dividerColor: Colors.transparent,
                                labelColor: Colors.white,
                                indicatorColor: purple,
                                unselectedLabelColor: Colors.white,
                                tabs: [
                                  Tab(text: 'Processing'),
                                  Tab(text: 'Completed'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: const BoxDecoration(color: black2),
                          height: MediaQuery.of(context).size.width*2 / 2.5,
                          child: TabBarView(
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    MilestonesCard(
                                        title: 'Badges for Community Member',
                                        subtitle: 'Reason for the requested functions goes here....',
                                        icon: Icons.shopping_bag,
                                        iconcolor: Colors.redAccent,
                                        filledboax: 7,
                                        isborder: false,
                                        isrequest:true
                                    ),
                                    MilestonesCard(
                                        title: 'Badges for Community Member',
                                        subtitle: 'Reason for the requested functions goes here....',
                                        icon: Icons.shopping_bag,
                                        iconcolor: Colors.redAccent,
                                        filledboax: 7,
                                        isborder: false,
                                        isrequest:true
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
