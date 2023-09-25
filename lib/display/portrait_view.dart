import 'package:flutter/material.dart';
import '../reuseables/widowcard.dart';

class PortraitView extends StatelessWidget {
  const PortraitView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: widowsBrain.widowBrain.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 1 / 1.7,
        ),
        itemBuilder: (_, index) {
          return WidowCard(
            index: index,
          );
        });
  }
}
