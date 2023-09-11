import 'package:flutter/material.dart';
import 'package:quiz_practice/app/database/local_storage.dart';
import 'package:quiz_practice/constants/colors.dart';
import 'package:quiz_practice/injection.dart';
import 'package:quiz_practice/screens/quiz_page.dart';

class LevelsScreen extends StatefulWidget {
  const LevelsScreen({super.key});

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  late int _currentLevel;

  @override
  void initState() {
    super.initState();
    getCurrentLevel();
  }

  void getCurrentLevel() async {
    _currentLevel = await getIt<LocalStorage>().getLevel() ?? 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.purpleColor,
        title: const Text(
          'Levels',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Select Level',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: 28,
                  itemBuilder: (context, index) {
                    final isLocked = index + 1 > _currentLevel;
                    return InkWell(
                      onTap: () {
                        if (!isLocked) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => QuizPage(
                                level: index + 1,
                              ),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.lightCircleColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 4,
                            color: AppColors.purpleColor,
                          ),
                        ),
                        child: Center(
                          child: !isLocked
                              ? Text(
                                  '${index + 1}',
                                  style: const TextStyle(
                                    color: AppColors.purpleColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              : const Icon(
                                  Icons.lock,
                                ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
