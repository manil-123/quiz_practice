import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_practice/provider/quiz_page_provider.dart';

class GameHeader extends ConsumerWidget {
  const GameHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizPageState = ref.watch(quizPageProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _liveVideoRow(),
        quizPageState.maybeWhen(
          orElse: () {
            return _watchReaction(0);
          },
          success: (quizData) {
            return _watchReaction(
              quizData.lives,
            );
          },
        ),
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

  Widget _watchReaction(int livesCount) {
    return Row(
      children: [
        const Row(
          children: [
            Icon(
              Icons.visibility,
              color: Colors.white,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              '0.0K',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Row(
          children: [
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              livesCount.toString(),
              style: const TextStyle(
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
