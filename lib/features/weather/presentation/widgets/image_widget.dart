import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/cloudy.png',
          ),
        ),
      ),
    );
  }
}
