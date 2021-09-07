import 'package:flutter/material.dart';
import 'package:tandamos/app/theme/app_theme.dart';

const double borderWidth = 5;

class NewTandaHeader extends StatelessWidget {
  const NewTandaHeader({Key? key, required this.page}) : super(key: key);

  final int page;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomColorBox(
                page: page,
                breakpointPage: 1,
                color: kBlue,
                height: (size.width - 32) / 3,
                width: (size.width - 32) / 3,
                child: Text('Unitanda'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CustomColorBox(
                  page: page,
                  breakpointPage: 2,
                  color: kGreen,
                  height: (size.width - 32) / 3,
                  width: (size.width - 32) / 3,
                  child: Text('Aportaré')),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CustomColorBox(
                  page: page,
                  breakpointPage: 3,
                  color: kPink,
                  height: (size.width - 32) / 3,
                  width: (size.width - 32) / 3,
                  child: Text('Durante')),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomColorBox(
                  page: page,
                  breakpointPage: 4,
                  color: kYellow,
                  height: ((size.width - 32) / 3) / 2,
                  width: size.width,
                  child: Text('Número')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomColorBox(
                  page: page,
                  breakpointPage: 4,
                  color: kC,
                  height: ((size.width - 32) / 3) / 2,
                  width: size.width,
                  child: Text('Recibirás')),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomColorBox extends StatelessWidget {
  const CustomColorBox({
    Key? key,
    required this.page,
    required this.breakpointPage,
    required this.height,
    required this.color,
    required this.width,
    required this.child,
  }) : super(key: key);

  final int page;
  final int breakpointPage;
  final double height;
  final double width;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: page >= breakpointPage,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
        ),
        child: child,
      ),
    );
  }
}
