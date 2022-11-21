
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget KadDhanyaPlants(KDItems kditems) => Column(
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
            child: Image.network(kditems.NetworkImage, fit: BoxFit.fill)),
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
                kditems.t1,
                style: TextStyle(fontSize: 18),
              ),
              Icon(Icons.navigate_next)
            ],
          )),
    )
  ],
);


class KDItems {
  final String t1;
  final NetworkImage;

  const KDItems({
    required this.t1,
    required this.NetworkImage,
  });
}

List<KDItems> kditems = [
  KDItems(
    t1: "Gahu",
    NetworkImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeYjQZfEqJNk4qn_y8g9faYre-haJg4JgmtwX6MZCUkYRLI3nap7O_YrhtSvR2IWuN4f0&usqp=CAU",
  ),
  KDItems(
    t1: "Jvari",
    NetworkImage: "https://thumbs.dreamstime.com/b/sorghum-bicolor-commun%C3%A9ment-appel%C3%A9-sorgho-et-aussi-connu-sous-le-nom-de-grand-millet-durra-jowari-jowar-ou-milo-isol%C3%A9-230405544.jpg",
  ),
  KDItems(
    t1: "Maka",
    NetworkImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOjS72_L63pHh-AmMX7ORG8GQafSLl_8uJqw&usqp=CAU",
  ),
  KDItems(
    t1: "Udid",
    NetworkImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZY5qKHb25A7qyftzS5m6MOoNPCAQm1Lb-3GgDJuqofVyXxIrvXEMP8xtDSEsOQaccIhM&usqp=CAU",
  ),
  KDItems(
    t1: "Harbhara",
    NetworkImage: "https://img.freepik.com/premium-photo/green-chickpea-branch-isolated-white-background-flowers-chickpeas-isolated_157837-4342.jpg?w=2000",
  ),
  KDItems(
    t1: "Bajri",
    NetworkImage: "http://www.trsseeds.com/wp-content/uploads/2019/08/Hybrid-Bajra-TRS-7788.jpg",
  ),

];
