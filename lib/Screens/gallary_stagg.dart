import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:techkriti/Widgets/colors_and_fonts.dart';

class GallaryStaggerd extends StatefulWidget {
  const GallaryStaggerd({super.key});

  @override
  State<GallaryStaggerd> createState() => _GallaryStaggerdState();
}

class _GallaryStaggerdState extends State<GallaryStaggerd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: MasonryGridView.builder(
        itemCount: 11,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset('assets/images/${index + 102}.jpg'), //Image.asset('assets/images/101.png'),
        ),
      ),
    );
  }
}
