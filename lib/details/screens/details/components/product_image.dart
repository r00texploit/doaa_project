import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key? key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final Size? size;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      // the height of this container is 80% of our width
      height: size!.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size!.width * 0.7,
            width: size!.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          // showAboutDialog(context: context),
          Image.network(
            // "assets/image/avatar-1.png",
            image!,
            height: size!.width * 0.75,
            width: size!.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
