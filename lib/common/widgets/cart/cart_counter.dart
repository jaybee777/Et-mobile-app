import 'package:et_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: 0,
            child: Container(
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                textAlign: TextAlign.center,
                "7",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: EtColors.borderPrimary),
              ),
            )),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
        )
      ],
    );
  }
}
