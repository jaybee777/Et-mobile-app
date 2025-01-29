import 'package:flutter/material.dart';

import '../../../../common/widgets/containers/primary_header_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EtPrimaryHeaderContainer(
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
