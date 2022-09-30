import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/screens/Home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 27),
          child: TextField(
            decoration: InputDecoration(
              filled: true, //<-- SEE HERE
              fillColor: Color.fromARGB(255, 193, 193, 194),
              suffixIcon: const Icon(Icons.search),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),

              hintText: "Search",

              // prefix: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        )
      ],
    );
  }
}

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> category = [
    "All items",
    "Crops ",
    "Agri inputs",
    "Seeds",
    "Equipment"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) => buildCategory(index),
        ));
  }

  Widget buildCategory(int index) {
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),

    //   child: Column(

    //     children: <Widget>[
    //       Text(
    //         category[index],
    //         style: const TextStyle(
    //           fontWeight: FontWeight.bold,

    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return SizedBox(
      width: 200.0,
      height: 10.0,
      // color: Colors.grey[200],
      // child: new Image.asset('assets/icons/menu.png'),
      child: Card(
        color: selectedIndex == index
            ? Colors.brown
            : Color.fromARGB(255, 203, 204, 203),
        child: Center(
          child: Text(
            category[index],
            style: TextStyle(color: Colors.white),
          ),
          //Text
        ), //Center
      ),
    );
  }
}
