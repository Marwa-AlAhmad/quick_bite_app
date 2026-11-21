import 'package:course_flutter_practice2/product/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shoppingcart extends StatefulWidget {
  const Shoppingcart({super.key});

  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
}

class _ShoppingcartState extends State<Shoppingcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Order",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 186, 9, 9),
          ),
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: Color.fromARGB(255, 240, 226, 226),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Consumer<Cart>(
              builder: (context, cart, child) {
                return Column(
                  children: [
                    Text(
                      "Total Items: ${cart.numOfProduct()}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 186, 9, 9),
                      ),
                    ),
                    Text(
                      "Total Price: ${cart.getTotlaPrice()} \$",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 186, 9, 9),
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                );
              },
            ),

            Expanded(
              child: Consumer<Cart>(
                builder: (context, cart, child) {
                  return ListView.builder(
                    itemCount: cart.getAllProduct().length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color.fromARGB(255, 240, 226, 226),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              "${cart.getAllProduct()[index].image}",
                              width: 70,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            "${cart.getAllProduct()[index].name}",
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 186, 9, 9),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "${cart.getAllProduct()[index].price} \$",
                            style: TextStyle(fontSize: 15,color: Color.fromARGB(179, 153, 47, 47)),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              cart.ReomveProduct(cart.getAllProduct()[index]);
                            },
                            icon: Icon(
                              Icons.remove,
                              size: 25,
                              color: Color.fromARGB(255, 186, 9, 9),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),

            SizedBox(height: 15,),

            Container(
              width: 160,
              height: 70,
              decoration: BoxDecoration(
                
                 color: Color.fromARGB(255, 186, 9, 9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Confirm Order",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 240, 226, 226),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
