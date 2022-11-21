import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget BagPlants(BagItems bagitems)=> Column(
  children: [
    Expanded(
      flex: 3,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
          color: Colors.blue.withOpacity(.15),
        ),
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
            child: Image.network(bagitems.NetworkImage, fit: BoxFit.fill)),
      ),
    ),
    Expanded(
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            color: Colors.blue.withOpacity(.15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                bagitems.t1,
                style: TextStyle(fontSize: 18),
              ),
              Icon(Icons.navigate_next)
            ],
          )),
    )
  ],
);


class BagItems {
  final String t1;
  final NetworkImage;

  const BagItems({
    required this.t1,
    required this.NetworkImage,
  });
}

List<BagItems> bagitems = [
  BagItems(
    t1: "Dalimb",
    NetworkImage: "https://gromaal.com/wp-content/uploads/2020/06/dalim-600x600.jpg",
  ),
  BagItems(
    t1: "Draksha",
    NetworkImage: "https://www.planetayurveda.com/pa-wp-images/grapes.jpg",
  ),
  BagItems(
    t1: "Dragon Fruit",
    NetworkImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Hylocereus_undatus_red_pitahaya.jpg/800px-Hylocereus_undatus_red_pitahaya.jpg",
  ),
  BagItems(
    t1: "Limbu",
    NetworkImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWHH0bd3yY3VlQERSycIjpmxQFjQDJ_hytuA&usqp=CAU",
  ),
  BagItems(
    t1: "Peru",
    NetworkImage: "https://smartyield.in/wp-content/uploads/2021/06/Guava.png",
  ),
  BagItems(
    t1: "Sitafal",
    NetworkImage: "https://www.bigbasket.com/media/uploads/p/m/10000349_20-fresho-custard-apple.jpg",
  ),

];
