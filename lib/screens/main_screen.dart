import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../methods/bag_plant_grid.dart';
import '../methods/fruit_plant_grid.dart';
import '../methods/kad_dhanya_grid.dart';
import '../methods/leafy_plants_grid.dart';
import '../methods/vel_vargiy_grid.dart';
import '../plants list/leafy_plants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(.15),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.lightGreen.withOpacity(.8),
                        border: Border.all(
                          color: Colors.grey,
                        )
                    ),
                    child: const Text("Leafy Plants",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                  ),
                  //Leafy plants grids irems below
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border.symmetric(
                          vertical: BorderSide(color: Colors.grey,),
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                      },
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 3/3.5
                      ),
                        itemCount: 6,
                        itemBuilder: (context, index) => LeafyPlantsGridItems(items[index]),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                    },
                    child: Container(
                      height: 40,
                      width:double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Colors.blue.withOpacity(.15),
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100),
                            child: Text("View All",textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                          ),
                          Icon(Icons.navigate_next)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.brown.withOpacity(.8),
                        border: Border.all(
                          color: Colors.grey,
                        )
                    ),
                    child: const Text("Vel Vargiy Palnts",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                  ),
                  //Leafy plants grids irems below
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border.symmetric(
                          vertical: BorderSide(color: Colors.grey,),
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                      },
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3/3.5
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) => VelVargPlants(velitems[index]),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                    },
                    child: Container(
                      height: 40,
                      width:double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Colors.blue.withOpacity(.15),
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100),
                            child: Text("View All",textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                          ),
                          Icon(Icons.navigate_next)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.red.withOpacity(.7),
                        border: Border.all(
                          color: Colors.grey,
                        )
                    ),
                    child: const Text("Friut Plants",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                  ),
                  //Leafy plants grids irems below
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border.symmetric(
                          vertical: BorderSide(color: Colors.grey,),
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                      },
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3/3.5
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) => FruitPlantsGridItems(frtitems[index]),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                    },
                    child: Container(
                      height: 40,
                      width:double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Colors.blue.withOpacity(.15),
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100),
                            child: Text("View All",textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                          ),
                          Icon(Icons.navigate_next)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.lime.withOpacity(.8),
                        border: Border.all(
                          color: Colors.grey,
                        )
                    ),
                    child: const Text("Kad Dhanya",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                  ),
                  //Leafy plants grids irems below
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border.symmetric(
                          vertical: BorderSide(color: Colors.grey,),
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                      },
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3/3.5
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) => KadDhanyaPlants(kditems[index]),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                    },
                    child: Container(
                      height: 40,
                      width:double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Colors.blue.withOpacity(.15),
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100),
                            child: Text("View All",textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                          ),
                          Icon(Icons.navigate_next)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.blueAccent.withOpacity(.6),
                        border: Border.all(
                          color: Colors.grey,
                        )
                    ),
                    child: const Text("Bag",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                  ),
                  //Leafy plants grids irems below
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border.symmetric(
                          vertical: BorderSide(color: Colors.grey,),
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                      },
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3/3.5
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) => BagPlants(bagitems[index]),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LeafyPlants()));
                    },
                    child: Container(
                      height: 40,
                      width:double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Colors.blue.withOpacity(.15),
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 100),
                            child: Text("View All",textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                          ),
                          Icon(Icons.navigate_next)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
