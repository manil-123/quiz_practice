import 'package:flutter/material.dart';

class GameHeader extends StatelessWidget {
  const GameHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _liveVideoRow(),
        _watchReaction(),
      ],
    );
  }

  Widget _liveVideoRow() {
    return Row(
      children: [
        const Icon(
          Icons.videocam,
          color: Colors.white,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 4.0,
          ),
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: const Text(
            'LIVE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  Widget _watchReaction() {
    return const Row(
      children: [
        Row(
          children: [
            Icon(
              Icons.visibility,
              color: Colors.white,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              '0K',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 16,
        ),
        Row(
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );
  }
}
