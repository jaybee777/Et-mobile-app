import 'package:et_app/common/widgets/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class EtCurvedEdgesWidget extends StatelessWidget {
  const EtCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: EtCurvedEdges(), child: child);
  }
}
