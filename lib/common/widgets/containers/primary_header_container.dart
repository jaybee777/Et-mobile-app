import 'package:et_app/common/widgets/curved_edges/curved_edge_widget.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../appBar/app_bar.dart';
import '../cart/cart_counter.dart';

class EtPrimaryHeaderContainer extends StatelessWidget {
  const EtPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return EtCurvedEdgesWidget(
      child: Container(
        color: EtColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 310,
          child: Stack(children: [
            EtAppBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "Jibril Muhammad",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(fontStyle: FontStyle.italic),
                  )
                ],
              ),
              actions: [CartCounter()],
            )
          ]),
        ),
      ),
    );
  }
}
