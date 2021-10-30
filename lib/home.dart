import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.red,
            ),
            title: TextField(
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search Your Food",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
            ),
            trailing: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/image.jpg"),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              abc(40, "assets/images/burger.jpg", Icons.arrow_back),
              abc(70, "assets/images/Pizza.jpg", null),
              abc(40, "assets/images/roll.jpg", Icons.arrow_forward),
            ],
          ),
          ListTile(
            title: Text(
              "Chicken Tikka Pizza",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tikka chicken, onion, and cheese"),
                Row(
                  children: [
                    star_icon(),
                    star_icon(),
                    star_icon(),
                    star_icon(),
                    Icon(
                      Icons.star_border,
                      color: Colors.yellow.shade700,
                    ),
                  ],
                ),
              ],
            ),
            trailing: Text(
              "\$ 6.9 ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
            child: Text(
              "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot",
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.grey, wordSpacing: 5.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Read More ...",
              style: TextStyle(
                  fontSize: 15, color: Colors.red, fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  Icons.event,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "0.5 km Distance",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), primary: Colors.red),
                child: Icon(Icons.remove),
                onPressed: () {},
              ),
              Text("1"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), primary: Colors.red),
                child: Icon(Icons.add),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0))),
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.shopping_cart),
                    Text("Add to Cart"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget abc(double Radius, String image_path, IconData? Icon_name) {
    return Container(
      margin: EdgeInsets.only(left: 0, top: 25, right: 0, bottom: 5),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: Radius,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(image_path),
        child: Icon(
          Icon_name,
          color: Colors.red,
          size: 30,
        ),
      ),
    );
  }

  Widget star_icon() {
    return Icon(
      Icons.star,
      size: 20,
      color: Colors.yellow.shade700,
    );
  }
}
