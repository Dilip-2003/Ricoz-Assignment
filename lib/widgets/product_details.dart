import 'package:flutter/material.dart';
import 'package:ricoz_assignment/constant/textstyle/textstyle.dart';
import 'package:ricoz_assignment/widgets/appbar_product_details.dart';
import 'package:ricoz_assignment/widgets/custom_button.dart';

// ignore: must_be_immutable
class ProductDetails extends StatefulWidget {
  ProductDetails({
    super.key,
    required this.brand,
    required this.title,
    required this.rating,
    required this.price,
    required this.category,
    required this.description,
    this.sliderImage,
  });
  final String brand, title, description, rating, price, category;
  List<dynamic>? sliderImage;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isActive = false;
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
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: height * 0.5,
                      width: width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.sliderImage!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: width * 0.01),
                            child: Image.network(
                              widget.sliderImage![index].toString(),
                              height: height * 0.45,
                              width: width * 0.75,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        height: width * 0.12,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: const Color(0xFF000000).withOpacity(0.8),
                                spreadRadius: 0,
                                offset: const Offset(0, 4)),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isActive = !isActive;
                            });
                          },
                          icon: isActive
                              ? const Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: height * 0.35,
                  width: width * 0.96,
                  margin: EdgeInsets.symmetric(
                      vertical: height * 0.005, horizontal: width * 0.04),
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
                              style: TextStyles.titleProductDiscount,
                            ),
                          ),
                          Text(
                            '\$${widget.price}',
                            style: TextStyles.titleProductDiscount,
                          )
                        ],
                      ),
                      Text(widget.brand, style: TextStyles.brand),
                      Text(
                        widget.rating,
                        style: TextStyles.rating,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        widget.description,
                        style: TextStyles.description,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Positioned(bottom: 5, child: CustomButtonNavbar()),
        ],
      ),
    );
  }
}
