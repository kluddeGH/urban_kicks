import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alet to user
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title:Text('Successfully Added!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.cyan
          ),),
        content: Text('check your cart',
        style: TextStyle(
            color: Colors.cyan
          ),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //searchbar
        Container(
          padding:const  EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8)),
          
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
                ),
              
              Icon(
                Icons.search,
                color: Colors.grey,
                ),
            ],
          ),
        ),
        //message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text('everyone flies.. some fly longer than others',
          style: TextStyle(color: Colors.grey),),
        ),

        //hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Text('Hot Picks 🔥',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                ),
              ),

              Text('See All',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        // shoes tile
        const SizedBox(height: 5,),
        Expanded(
          child: ListView.builder(
            //number of shoes tile if you increse shoes increase th number
            itemCount: 10,
            scrollDirection: Axis.horizontal ,
            itemBuilder: (context, index){

              //get a shoe
              Shoe shoe= value.getShoeList()[index];

              //return the Shoe
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 5,left: 25, right: 25,),
          child: Divider(color: Colors.black38,),
        )

      ],
    ),) ;
  }
}