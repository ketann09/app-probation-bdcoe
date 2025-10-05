import 'package:e_commerce_app/common/widgets/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: MyColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  Positioned(
                    top: -150,
                    right: -150,
                    child: CircularContainer(backgroundColor: MyColors.textWhite.withAlpha(25),)
                    ),
                    Positioned(
                    top: 100,
                    right: -300,
                    child: CircularContainer(backgroundColor: MyColors.textWhite.withAlpha(25),)
                    )
                  ]
                ),
            ),
          ],
        ),
      ),
    );
  }
}

