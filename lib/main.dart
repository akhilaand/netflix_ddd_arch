import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ddd_arch/application/downloads/downloads_bloc.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/domain/core/di/injectable.dart';
import 'package:netflix_ddd_arch/presentation/bottomNavigation/bottom_navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx)=>getIt<DownloadsBloc>())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            scaffoldBackgroundColor: backGroundColor,
            textTheme: const TextTheme(
              bodyText1: TextStyle(color: red),
              bodyText2: TextStyle(color: white),
            ),
            primarySwatch: Colors.blue,
          ),
          home: BottomNavigation()),
    );
  }
}
