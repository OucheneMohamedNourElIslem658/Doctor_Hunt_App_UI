import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';

class OrdersList extends StatelessWidget {
  OrdersList({
    super.key,
    required this.size,
  });

  final Size size;
  final orders = [
    {
      'image' : 'assets/icons/guide.svg',
      'name': 'Guide to medicine order'
    },
    {
      'image' : 'assets/icons/prescription.svg',
      'name': 'Prescription related issues'
    },
    {
      'image' : 'assets/icons/shop_bag.svg',
      'name': 'Order status'
    },
    {
      'image' : 'assets/icons/delivery.svg',
      'name': 'Order delivery'
    },
    {
      'image' : 'assets/icons/payment.svg',
      'name': 'Payments & Refunds'
    },
    {
      'image' : 'assets/icons/return.svg',
      'name': 'Order returns'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: List.generate(
        orders.length, 
        (index) {
          final order = orders[index];
          final name = order['name'] as String;
          final image = order['image'] as String;
          return Order(
            size: size,
            text: name,
            image: image,
          );
        },
      )
    );
  }
}

class Order extends StatelessWidget {
  const Order({
    super.key,
    required this.size, 
    required this.image, 
    required this.text,
  });

  final Size size;
  final String image,text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (size.width-55)/2,
      padding: const EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 10),
      constraints: const BoxConstraints(minHeight: 160),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.08),
            blurRadius: 20
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: bluredGreen.withOpacity(0.76),
              borderRadius: const BorderRadius.all(Radius.circular(100))
            ),
            child: SvgPicture.asset(image),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: headline27Grey,
          )
        ],
      ),
    );
  }
}