import 'package:course_flutter_practice2/mywidgets/Textwidget.dart';
import 'package:course_flutter_practice2/mywidgets/iconbuttonwidget.dart';
import 'package:course_flutter_practice2/mywidgets/imagewidget.dart';
import 'package:course_flutter_practice2/mywidgets/secondimagewidget.dart';
import 'package:course_flutter_practice2/mywidgets/secondtextwidget.dart';
import 'package:course_flutter_practice2/product/cart.dart';
import 'package:course_flutter_practice2/product/item.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Item> items = [
    Item(name: "Chicken Burger", price: 3, image: "images/normal.jpg"),
    Item(name: "Cheese Burger", price: 4, image: "images/cheese.jpg"),
    Item(name: "Huge Burger", price: 5, image: "images/doubledouble.jpg"),
    Item(name: "Egg Burger", price: 4, image: "images/egg.jpg"),
    Item(name: "Double Burger", price: 5, image: "images/double.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 186, 9, 9),
          ),
        ),
        actions: [
          Icon(
            Icons.restaurant_menu,
            size: 45,
            color: Color.fromARGB(255, 186, 9, 9),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 240, 226, 226),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Search for anything",
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    fillColor: Color.fromARGB(255, 240, 226, 226),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 186, 9, 9),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Burger.jpg"),
                            fit: BoxFit.cover,
                          ),
                          // color:Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(15),
                        width: 80,
                        height: 80,
                      ),

                      Text(
                        "Burger",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 15),

                  Column(
                    children: [
                      Imagewidget(imageUrl: "images/Checkeen.jpg"),

                      Textwidget(text: "Chicken"),
                    ],
                  ),

                  SizedBox(width: 15),

                  Column(
                    children: [
                      Imagewidget(imageUrl: "images/Pizza.jpg"),

                      Textwidget(text: "Pizza"),
                    ],
                  ),

                  SizedBox(width: 15),

                  Column(
                    children: [
                      Imagewidget(imageUrl: "images/Shawrma.jpg"),

                      Textwidget(text: "Shawarma"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 17),

              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Friday Offer",

                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 9),

              Container(
                padding: EdgeInsets.all(15),
                // alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 186, 9, 9),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 375,
                height: 130,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // لجعل النصوص تبدأ من اليسار
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Got",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),

                          Text(
                            "FREE COKE",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          Text(
                            "on every Burger",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/Burger.jpg"),
                          fit: BoxFit.cover,
                        ),

                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(15),
                      width: 130,
                      height: 130,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Today's Deal",

                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 7),

              SizedBox(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return Container(
                      margin:  EdgeInsets.only(right: 12),
                      padding:  EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 240, 226, 226),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: 150,
                      height: 190,
                      child: Column(
                        children: [
                          Secondimagewidget(imageUrl: item.image),
                          SizedBox(height: 10),
                          Secondtextwidget(text: item.name),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "${item.price} \$",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 135, 124, 25),
                                ),
                              ),

                              IconButton(
                                onPressed: () {
                                  context.read<Cart>().AddProduct(item);
                                },
                                icon: Icon(
                                  Icons.add_circle_sharp,
                                  color: Colors.green,
                                  size: 30,
                                ),
                              ),

                              // InkWell(
                              //   onTap: () {
                              //     context.read<Cart>().AddProduct(item);
                              //   },
                              //   child: Iconbuttonwidget(),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         padding: EdgeInsets.all(10),
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 240, 226, 226),
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         width: 150,
              //         height: 190,
              //         child: Column(
              //           children: [
              //             Secondimagewidget(imageUrl: "images/normal.jpg"),
              //             SizedBox(height: 10),
              //             Secondtextwidget(text: "Chicken Burger"),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Text(
              //                   "3 \$",
              //                   style: TextStyle(
              //                     fontSize: 24,
              //                     fontWeight: FontWeight.bold,
              //                     color: Color.fromARGB(255, 135, 124, 25),
              //                   ),
              //                 ),
              //                 Iconbuttonwidget(),
              //                 // IconButton(onPressed: (){}, icon: Icon(Icons.add))

              //                 // Icon(Icons.add_circle_sharp, color: Colors.green),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),

              //       SizedBox(width: 12),

              //       Container(
              //         padding: EdgeInsets.all(10),
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 240, 226, 226),
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         width: 150,
              //         height: 190,
              //         child: Column(
              //           children: [
              //             Secondimagewidget(imageUrl: "images/cheese.jpg"),
              //             SizedBox(height: 10),
              //             Secondtextwidget(text: "Cheese Burger"),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Text(
              //                   "4 \$",
              //                   style: TextStyle(
              //                     fontSize: 24,
              //                     fontWeight: FontWeight.bold,
              //                     color: Color.fromARGB(255, 135, 124, 25),
              //                   ),
              //                 ),

              //                 Iconbuttonwidget(),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),

              //       SizedBox(width: 12),

              //       Container(
              //         padding: EdgeInsets.all(10),
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 240, 226, 226),
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         width: 150,
              //         height: 190,
              //         child: Column(
              //           children: [
              //             Secondimagewidget(
              //               imageUrl: "images/doubledouble.jpg",
              //             ),
              //             SizedBox(height: 10),
              //             Secondtextwidget(text: "Huge Burger"),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Text(
              //                   "6 \$",
              //                   style: TextStyle(
              //                     fontSize: 24,
              //                     fontWeight: FontWeight.bold,
              //                     color: Color.fromARGB(255, 135, 124, 25),
              //                   ),
              //                 ),

              //                 Iconbuttonwidget(),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),

              //       SizedBox(width: 12),

              //       Container(
              //         padding: EdgeInsets.all(10),
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 240, 226, 226),
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         width: 150,
              //         height: 190,
              //         child: Column(
              //           children: [
              //             Secondimagewidget(imageUrl: "images/egg.jpg"),
              //             SizedBox(height: 10),
              //             Secondtextwidget(text: "Egg Burger"),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Text(
              //                   "5 \$",
              //                   style: TextStyle(
              //                     fontSize: 24,
              //                     fontWeight: FontWeight.bold,
              //                     color: Color.fromARGB(255, 135, 124, 25),
              //                   ),
              //                 ),

              //                 Iconbuttonwidget(),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),

              //       SizedBox(width: 12),

              //       Container(
              //         padding: EdgeInsets.all(10),
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 240, 226, 226),
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         width: 150,
              //         height: 190,
              //         child: Column(
              //           children: [
              //             Secondimagewidget(imageUrl: "images/double.jpg"),
              //             SizedBox(height: 10),
              //             Secondtextwidget(text: "Double Burger"),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Text(
              //                   "5 \$",
              //                   style: TextStyle(
              //                     fontSize: 24,
              //                     fontWeight: FontWeight.bold,
              //                     color: Color.fromARGB(255, 135, 124, 25),
              //                   ),
              //                 ),

              //                 Iconbuttonwidget(),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
