import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

    
  //paybutton
          void payNow(){

          }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            const Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 20,),

            Expanded(
              //background image
              child: DecoratedBox(
        decoration:const  BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/shoes6.png',),
                
                fit: BoxFit.fitWidth, 
            ),
        ),
              child:
               ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index){
              //get indivisula shoes
              Shoe individualShoe = value.getUserCart() [index];
              //return the  cart Item
              return CartItem(shoe: individualShoe);
            },
           ),
          ),


          ),
             GestureDetector(
            onTap: payNow,
            child: Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(12.5),
                ),
              child: const Center(
                child: Text("Pay Now",
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
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