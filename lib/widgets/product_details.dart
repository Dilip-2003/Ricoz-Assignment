import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ricoz_assignment/widgets/appbar_product_details.dart';
import 'package:ricoz_assignment/widgets/custom_bottom_navbar.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({
    super.key,
    required this.brand,
    required this.title,
    required this.rating,
    required this.price,
    required this.category,
    required this.description,
  });
  final String brand, title, description, rating, price, category;
  // List<dynamic>? sliderImage;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBarProductDetails(
          title: widget.category,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.5,
              width: width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: height * 0.5,
                    width: width * 0.65,
                    color: Colors.blue,
                    margin: EdgeInsets.only(right: width * 0.01),

                    // child: Image.network(widget.sliderImage![index].toString()),
                  );
                },
              ),
            ),
            Container(
              height: height * 0.27,
              width: width * 0.96,
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              margin: EdgeInsets.symmetric(
                  vertical: height * 0.01, horizontal: width * 0.04),
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.5,
                        child: Text(
                          widget.title,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF222222),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '\$${widget.price}',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF222222),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    widget.brand,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9B9B9B))),
                  ),
                  Text(
                    widget.rating,
                    style:
                        const TextStyle(fontSize: 12, color: Color(0xFF9B9B9B)),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    widget.description,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF222222),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
