
import 'package:flutter/material.dart';

const Color purple = Color.fromARGB(255, 114, 93, 248);
const Color black = Color.fromARGB(255, 23, 24, 26);
const Color black2 = Color.fromARGB(255, 32, 32, 34);
const Color black3 = Color.fromARGB(255, 49, 48, 53);

class ExpandableCard extends StatelessWidget {
  final title, child;
  ExpandableCard({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      child: Theme(
        data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent),
        child: ExpansionTile(

          collapsedBackgroundColor: black2,
          backgroundColor: black2,
          collapsedShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          textColor: Colors.white,
          collapsedTextColor: Colors.white,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: black2,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

class MyBoxCard extends StatelessWidget {
  final title, percentage, amount;
  bool isborder, isselected, isgrowth;
  MyBoxCard(
      {super.key,
        required this.title,
        required this.percentage,
        required this.isgrowth,
        required this.amount,
        this.isborder = true,
        this.isselected = false});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.width / 3.4,
        width: MediaQuery.of(context).size.width / 2.4,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: black3,
          borderRadius: BorderRadius.circular(20),
          border: (isborder)
              ? Border(
              right: BorderSide(
                  color: (isselected) ? purple : purple.withOpacity(0.3),
                  width: MediaQuery.of(context).size.width / 15))
              : null,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      height: 2,
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: MediaQuery.of(context).size.width / 30),
                ),
                Row(
                  children: [
                    Icon(
                      (isgrowth) ? Icons.trending_up : Icons.trending_down,
                      color: (isgrowth) ? Colors.green : Colors.red,
                      size: MediaQuery.of(context).size.width / 30,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      percentage,
                      style: TextStyle(
                          color: (isgrowth) ? Colors.green : Colors.red,
                          fontFamily: 'Lato',
                          fontSize: MediaQuery.of(context).size.width / 30),
                    ),
                  ],
                ),
                Text(
                  amount,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: MediaQuery.of(context).size.width / 13,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

            // Icon(Icons.arrow_forward_ios,color: Colors.white,size: MediaQuery.of(context).size.width/20,),
          ],
        ),
      ),
      (isborder)
          ? Positioned(
        top: MediaQuery.of(context).size.width / 8.2,
        bottom: MediaQuery.of(context).size.width / 8.2,
        right: 2,
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: MediaQuery.of(context).size.width / 20,
        ),
      )
          : const SizedBox(),
    ]);
  }
}

class PointContainer extends StatelessWidget {
  bool isfilled,isborder;
  PointContainer({super.key,this.isfilled=true,this.isborder=true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width/65,
      width: MediaQuery.of(context).size.width/11,
      decoration:
      BoxDecoration(color:(isfilled)? purple:Colors.transparent, borderRadius: BorderRadius.circular(10),border:(isborder)? Border.all(color: Colors.white,width: 0.2):null),
    );
  }
}


class MilestonesCard extends StatelessWidget {
  final title,subtitle,coins,icon,iconcolor,filledboax,isborder;
  bool isrequest;
  MilestonesCard({super.key,required this.title,required this.subtitle,this.coins='50',required this.icon,required this.iconcolor,this.filledboax=0,this.isborder=false,this.isrequest=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10,bottom: 10),
      padding: const EdgeInsets.all(10),
      // height: MediaQuery.of(context).size.width /  3,
      width: double.infinity,
      decoration: BoxDecoration(
          color: black3,
          border: (isrequest)?const Border(left:BorderSide(color: purple,width: 15)):null,
          borderRadius: (isrequest)?const BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)):BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text((isrequest)?'':
              coins,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize:
                    MediaQuery.of(context).size.width /
                        30),
              ),
              Icon( (isrequest)?Icons.edit:
              Icons.circle,
                color: (isrequest)?Colors.white:Colors.yellow,
                size: MediaQuery.of(context).size.width / 30,
              ),
            ],
          ),
          ListTile(
            leading: (isrequest)?null:CircleAvatar(
              backgroundColor:
              iconcolor.withOpacity(0.3),
              radius:
              MediaQuery.of(context).size.width / 15,

              child: Icon(
                icon,
                color: iconcolor,
                // size:
                // MediaQuery.of(context).size.width / 18,
              ),
            ),
            title: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize:
                  MediaQuery.of(context).size.width /
                      28),
            ),subtitle:Text(
            subtitle,
            style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Lato',
                fontSize:
                MediaQuery.of(context).size.width /
                    30),
          ) ,),
          (isrequest)?const SizedBox():Row(mainAxisAlignment: MainAxisAlignment.end,children: [

            PointContainer(isfilled:filledboax>=1,isborder: isborder,),
            PointContainer(isfilled:filledboax>=2,isborder: isborder,),
            PointContainer(isfilled:filledboax>=3,isborder: isborder,),
            PointContainer(isfilled:filledboax>=4,isborder: isborder,),
            PointContainer(isfilled:filledboax>=5,isborder: isborder,),
            PointContainer(isfilled:filledboax>=6,isborder: isborder,),
            PointContainer(isfilled:filledboax>=7,isborder: isborder,),

          ],),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}

