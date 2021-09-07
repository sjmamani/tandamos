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
            CustomColorBox(
              page: page,
              breakpointPage: 1,
              color: kBlue,
              height: 120,
              width: size.width / 3,
              child: Text('Unitanda'),
            ),
            CustomColorBox(
                page: page,
                breakpointPage: 2,
                color: kGreen,
                height: 120,
                width: size.width / 3,
                child: Text('Aportaré')),
            CustomColorBox(
                page: page,
                breakpointPage: 3,
                color: kPink,
                height: 120,
                width: size.width / 3,
                child: Text('Durante')),
          ],
        ),
        Column(
          children: [
            CustomColorBox(
                page: page,
                breakpointPage: 4,
                color: kYellow,
                height: 95,
                width: size.width,
                child: Text('Número')),
            CustomColorBox(
                page: page,
                breakpointPage: 4,
                color: kC,
                height: 70,
                width: size.width,
                child: Text('Recibirás')),
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
          border: Border.all(
            color: Colors.white,
            width: borderWidth,
          ),
        ),
        child: child,
      ),
    );
  }
}
