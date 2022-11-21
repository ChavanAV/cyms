import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget LeafyPlantsGridItems(LeafItems items) => Column(
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
            child: Image.network(items.AssetImage, fit: BoxFit.fill)
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
              Text(items.t1,style: TextStyle(fontSize: 18),),
              Icon(Icons.navigate_next)
            ],
          )
      ),
    )
  ],
);

class LeafItems {
  final String t1;
  final String AssetImage;
  LeafItems({
    required this.t1,
    required this.AssetImage,
  });
}

List<LeafItems> items = [
  LeafItems(
    t1: "Kothimbir",
    AssetImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReCuMtKgITAPL3wz4OvJgS2Mle_LP_rzzBqQ&usqp=CAU",
  ),
  LeafItems(
    t1: "Methi",
    AssetImage: "https://5.imimg.com/data5/LA/IU/MY-28014299/fresh-methy-bunch-500x500.jpg",
  ),
  LeafItems(
    t1: "Shepu",
    AssetImage: "https://aapkiidukaan.com/wp-content/uploads/2021/07/dill-leaves.jpg",
  ),
  LeafItems(
    t1: "Palak",
    AssetImage: "http://cdn.shopify.com/s/files/1/0451/1101/7626/products/spinachseeds.jpg?v=1603966262",
  ),
  LeafItems(
    t1: "Tandulsa",
    AssetImage: "https://m.media-amazon.com/images/I/51sFRz5MSHL.jpg",
  ),
  LeafItems(
    t1: "Chukka",
    AssetImage: "http://specialtyproduce.com/sppics/12569.png",
  ),
];
