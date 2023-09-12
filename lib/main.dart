import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_practice/app/database/local_storage.dart';
import 'package:quiz_practice/cubits/quiz_page_cubit.dart';
import 'package:quiz_practice/injection.dart';
import 'package:quiz_practice/screens/levels_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  final level = await getIt<LocalStorage>().getLevel();
  if (level == null) {
    await getIt<LocalStorage>().saveLevel(1);
  }
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<QuizPageCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Quiz App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LevelsScreen(),
      ),
    );
  }
}
