import 'package:flutter/material.dart';

class BannerRecommendUs extends StatelessWidget {
  const BannerRecommendUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      height: 150.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
    );
  }
}
