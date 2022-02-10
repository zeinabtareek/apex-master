import 'package:apex/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  final Function()? increase;
  final Function()? decrease;
  final String? image;
  final String? label;
  final String? price;

  const Cart(
      {Key? key,
      this.label,
      this.price,
      this.image,
      this.decrease,
      this.increase})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        background: Container(
          color: K.whiteColor,
          child: const Center(
            child: Icon(
              EvaIcons.trash2,
              color: K.blackColor,
            ),
          ),
        ),
        key: UniqueKey(),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: K.whiteColor,
          child: SizedBox(
            height: 135,
            width: K.width,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(2),
                      topRight: Radius.circular(2)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    image!,
                    fit: BoxFit.cover,
                    width: 150,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          label!,
                          style: const TextStyle(
                              fontSize: 16,
                              color: K.blackColor,
                              fontFamily: "Poppins-Bold"),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          price!,
                          style: const TextStyle(
                              fontSize: 15,
                              color: K.mainColor,
                              fontFamily: "Poppins-Bold"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: decrease,
                              icon: const Icon(Icons.remove_circle,
                                  size: 30, color: K.mainColor),
                            ),
                            const Text(
                              '2',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: increase,
                              icon: const Icon(
                                Icons.add_circle,
                                size: 30,
                                color: K.mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
