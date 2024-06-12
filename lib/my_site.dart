// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/configs.dart';
import 'package:portfolio/core/configs/connection/bloc/connected_bloc.dart';
import 'package:portfolio/core/configs/connection/network_check.dart';
import 'package:portfolio/core/providers/drawer_provider.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class portfolio extends StatelessWidget {
  const portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectedBloc>(create: (context) => ConnectedBloc()),
      ],
      child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => DrawerProvider()),
            ChangeNotifierProvider(create: (_) => ScrollProvider()),
          ],
          child: Sizer(builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Sudesh',
              theme: AppTheme.themeData(context),
              initialRoute: "/",
              routes: {"/": (context) => const NChecking()},
            );
          })),
    );
  }
}
