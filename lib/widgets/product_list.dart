import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:ricoz_assignment/widgets/product_details.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<dynamic> products = [];
  List<dynamic> sliderImages = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final url = Uri.parse('https://dummyjson.com/products/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        products = json.decode(response.body)['products'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        String rating = products[index]['rating'].toString();

        double discountPrice = (products[index]['price'] -
            ((products[index]['price'] *
                    products[index]['discountPercentage']) /
                100));

        String finaldiscountPrice = discountPrice.toStringAsFixed(2);
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProductDetails(
                    brand: products[index]['brand'].toString(),
                    price: finaldiscountPrice,
                    rating: '⭐⭐⭐⭐⭐($rating)',
                    title: products[index]['title'].toString(),
                    description: products[index]['description'].toString(),
                    category: products[index]['category'].toString(),
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
                      child: products[index]['thumbnail'] != null
                          ? Image.network(
                              products[index]['thumbnail'].toString(),
                              height: height * 0.18,
                              width: width * 0.46,
                              fit: BoxFit.cover,
                            )
                          : Container(
                              width: width * 0.48,
                              height: height * 0.12,
                              color: Colors.grey, // Placeholder color
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
                        child: products[index]['discountPercentage'] != null
                            ? Text(
                                '-${products[index]['discountPercentage'].toString()}%',
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFFFFFFFF),
                                ),
                              )
                            : const Text('-0%'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.07, right: width * 0.015),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '⭐⭐⭐⭐⭐($rating)',
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xFF9B9B9B)),
                      ),
                      products[index]['brand'] != null
                          ? Text(
                              products[index]['brand'].toString(),
                              style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF9B9B9B))),
                            )
                          : Container(
                              width: 10,
                              height: 10,
                              color: Colors.grey, // Placeholder color
                            ),
                      products[index]['title'] != null
                          ? SizedBox(
                              width: width * 0.38,
                              child: Text(
                                products[index]['title'].toString(),
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF222222),
                                  ),
                                ),
                              ),
                            )
                          : Container(
                              width: 10,
                              height: 10,
                              color: Colors.grey, // Placeholder color
                            ),
                      Row(
                        children: [
                          products[index]['price'] != null
                              ? Text(
                                  '\$${products[index]['price'].toString()}  ',
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF9B9B9B),
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                )
                              : const Text('0\$'),
                          products[index]['price'] != null
                              ? Text(
                                  '  \$$finaldiscountPrice',
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFDB3022),
                                    ),
                                  ),
                                )
                              : const Text('0\$'),
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
