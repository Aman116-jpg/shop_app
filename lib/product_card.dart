import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,

  });

  @override
  Widget build(BuildContext context) {
    return   Container(

      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(8*2.0),
      decoration: BoxDecoration(
        color: backgroundColor, // color property should be used inside
        // box decoration if box decoration is present, if it is not present then also color
        //  can be used , but not simultaneously inside a container

        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          Text('\$$price',
              style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 5),
          Center(
            child: Image.asset(
              image,
              height: 175,
            ),
          ),

        ],
      ),

    );
  }
}
