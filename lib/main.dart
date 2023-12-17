import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_intern_task/screens/detailed_products_screen.dart';
import 'package:slash_intern_task/shared/bloc_observer.dart';
import 'package:slash_intern_task/shared/cubit/cubit.dart';
import 'package:slash_intern_task/shared/cubit/states.dart';
import 'package:slash_intern_task/shared/network/local/cache_helper.dart';
import 'package:slash_intern_task/shared/network/remote/dio_helper.dart';
import 'package:slash_intern_task/shared/styles/themes.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = const SimpleBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  bool? isDark = CacheHelper.getData(key: 'isDark');

  runApp( MyApp(
    isDark: isDark,
  ));
}

class MyApp extends StatelessWidget {
  final bool? isDark;

  const MyApp({super.key,required this.isDark});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit()..changeAppMode(fromShared: isDark,),),
          BlocProvider(create: (context) => SlashAppCubit()),
        ],
        child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: AppCubit.get(context).isDark
                  ? ThemeMode.light
                  : ThemeMode.dark,
              theme: lightTheme,
              darkTheme: darkTheme,
              home: const Directionality(
                textDirection: TextDirection.ltr,
                child: DetailedProductScreen(),
              ),
            );
          },
        )
    );
  }
}