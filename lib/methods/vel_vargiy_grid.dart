
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget VelVargPlants(VelItems velitems) => Column(
  children: [
    Expanded(
      flex: 3,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius:const BorderRadius.only(
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
            child: Image.network(velitems.NetworkImage, fit: BoxFit.fill)
        ),
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
                bottomRight: Radius.circular(5)
            ),
            color: Colors.blue.withOpacity(.15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(velitems.t1,style: TextStyle(fontSize: 18),),
              Icon(Icons.navigate_next)
            ],
          )
      ),
    )
  ],
);

class VelItems {
  final String t1;
  final NetworkImage;

  const VelItems({
    required this.t1,
    required this.NetworkImage,
  });
}

List<VelItems> velitems = [
  VelItems(
    t1: "Kalingad",
    NetworkImage: "https://us.123rf.com/450wm/proslgn/proslgn1509/proslgn150900070/45556406-anguria-isolato-su-sfondo-bianco-.jpg?ver=6",
  ),
  VelItems(
    t1: "Kakdi",
    NetworkImage: "https://www.greenavity.com/uploads/product_image/158133390548.png",
  ),
  VelItems(
    t1: "Karle",
    NetworkImage: "https://www.hi5mart.com/image/cache/catalog/Vegetables/Bitter-Gourd-750x750.jpg",
  ),
  VelItems(
    t1: "Kharbuj",
    NetworkImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhJqt2dF6q9O36CMD9r9sqhpc48BYwIKVJAg&usqp=CAU",
  ),
  VelItems(
    t1: "Ghevda",
    NetworkImage: "https://m.media-amazon.com/images/I/51h7rJ5rKoL._SX679_.jpg",
  ),
  VelItems(
    t1: "Bhopla",
    NetworkImage: "https://jpkart.in/wp-content/uploads/2020/11/Bottle-Gourd.jpg",
  ),
];