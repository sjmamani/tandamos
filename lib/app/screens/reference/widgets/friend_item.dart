import 'package:flutter/material.dart';

const boxSize = 40.0;

class FriendItem extends StatelessWidget {
  const FriendItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          const Spacer(),
          const CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(child: Text(name)),
          Container(
            height: boxSize,
            width: boxSize,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: const Icon(
              Icons.done,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: boxSize,
            width: boxSize,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
