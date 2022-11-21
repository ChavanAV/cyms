import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget FruitPlantsGridItems(FrtItems items) => Column(
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
                child: Image.network(items.NetworkImage, fit: BoxFit.fill)),
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
                    items.t1,
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.navigate_next)
                ],
              )),
        )
      ],
    );

class FrtItems {
  final String t1;
  final NetworkImage;

  const FrtItems({
    required this.t1,
    required this.NetworkImage,
  });
}

List<FrtItems> frtitems = [
  FrtItems(
      t1: "Tomato",
      NetworkImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/1200px-Tomato_je.jpg",
  ),
  FrtItems(
    t1: "Vangi",
    NetworkImage: "https://aapkiidukaan.com/wp-content/uploads/2021/04/vang-bhaji.jpg",
  ),
  FrtItems(
    t1: "Mirchi",
    NetworkImage: "https://i0.wp.com/shimaze.com/wp-content/uploads/2020/05/green-chilli-600x480-1.webp?w=600&ssl=1",
  ),
  FrtItems(
    t1: "Kobi",
    NetworkImage: "https://ethnicprides.com/wp-content/uploads/2017/07/Cabbage.jpg",
  ),
  FrtItems(
    t1: "Flower",
    NetworkImage: "https://johnsonfruiters.co.za/wp-content/uploads/2020/11/19-cauliflower-png-image.png",
  ),
  FrtItems(
    t1: "Bel Pepper",
    NetworkImage: "https://5.imimg.com/data5/RF/JI/GLADMIN-70752129/capsicum-green-and-shimla-mirchi-500x500.png",
  ),
];
