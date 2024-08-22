// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flower_app/contants.dart';
import 'package:flower_app/model/item.dart';
import 'package:flower_app/widgets/custom_appbar.dart';

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({ required this.product});
  Item product;
  
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // const Details({Key? key}) : super(key: key);
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [ProductsAndPrice()],
          backgroundColor: kPrimaryColor,
          title: Text("Details screen"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(widget.product.imgPath),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "\$  ${widget.product.price}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 129, 129),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child:  Text(
                          "New",
                          style: TextStyle(fontSize: 15),
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 26,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 66,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.edit_location,
                          size: 26,
                          color: Color.fromARGB(168, 3, 65, 27),
                          // color: Color.fromARGB(255, 186, 30, 30),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          widget.product.location,
                          style: TextStyle(fontSize: 19),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Details : ",
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  maxLines: isShowMore ? 3 : null,
                  overflow: TextOverflow.fade,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isShowMore = !isShowMore;
                      });
                    },
                    child: Text(
                      isShowMore ? "Show more" : "Show less",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
