import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ricoz_assignment/widgets/product_details.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProductDetails(
                    brand: 'Dorothy Parkins',
                    price: '15\$',
                    rating: '⭐⭐⭐⭐⭐(10)',
                    title: 'Evening Dress',
                    description:
                        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                  );
                },
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: width * 0.03, vertical: height * 0.01),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 25,
                      spreadRadius: 0,
                      offset: const Offset(1, 4),
                      color: const Color(0xff00000014).withOpacity(0.08))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxXnC3fwMwkbIt3ejGRIw3NmbDyUtgS5g2jA&usqp=CAU',
                        height: height * 0.12,
                        width: width * 0.48,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: height * 0.01,
                      left: height * 0.01,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.027, vertical: height * .007),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text('-20%',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                                color: Color(0xFFFFFFFF))),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        '⭐⭐⭐⭐⭐(10)',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF9B9B9B)),
                      ),
                      Text(
                        'Dorothy Perkins',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF9B9B9B))),
                      ),
                      Text(
                        'Evening Dress',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF222222),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '15\$ ',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF9B9B9B),
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                          Text(
                            ' 15\$ ',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFDB3022),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
