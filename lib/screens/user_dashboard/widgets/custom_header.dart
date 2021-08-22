import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      height: 150,
      child: Row(
        children: const [
          InformacionDePago(),
          CalendarioButton(),
        ],
      ),
    );
  }
}

class CalendarioButton extends StatelessWidget {
  const CalendarioButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.greenAccent[100],
        child: GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.calendar_today_outlined,
                size: 96,
              ),
              Text(
                'calendario >',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InformacionDePago extends StatelessWidget {
  const InformacionDePago({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.indigoAccent[100],
                radius: 26,
                child: const Icon(
                  Icons.trending_up,
                  color: Colors.black,
                  size: 32,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '\$2,250',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Refrigerador',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  Icon(Icons.paid_outlined),
                  Text('\$250'),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.calendar_today_outlined),
                  Text('12 semanas'),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.bottomCenter,
            color: Colors.indigoAccent.withOpacity(0.8),
            child: const Text(
              'Próximo pago: 12 de agosto',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
