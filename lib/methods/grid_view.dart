import 'package:cyms/chart%20info/chart_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget GridItems(gitem items) => GestureDetector(
  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ChartInfo())),
  child:   Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.blue.withOpacity(.15),
              ),
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                  child: Image.asset(items.AssetImage, fit: BoxFit.fill)),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)
                  ),
                  color: Colors.blue.withOpacity(.15),
                ),
                child: ListTile(
                  title:  Text("View"),
                  trailing: Icon(Icons.navigate_next),
                ),
              ),
            ),
          )
        ],
      ),
);

class gitem {
  final String t1;
  final String AssetImage;
  gitem({
    required this.t1,
    required this.AssetImage,
  });
}

List<gitem> items = [
  gitem(
    t1: "Hi",
    AssetImage: "assets/images/bananas-404536.jpg",
  ),
  gitem(
    t1: "Hfdfsi",
    AssetImage: "assets/images/corn-1841271.jpg",
  ),
  gitem(
    t1: "Hi2342sdff",
    AssetImage: "assets/images/paprika-1539491.jpg",
  ),
  gitem(
    t1: "H324",
    AssetImage: "assets/images/ripe-papaya-1634867.jpg",
  ),
  gitem(
    t1: "H234242i",
    AssetImage: "assets/images/tomatoes-879441.jpg",
  ),
  gitem(
    t1: "H6546i",
    AssetImage: "assets/images/watermelon-1379990.jpg",
  ),
];
