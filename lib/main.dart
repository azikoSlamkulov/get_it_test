import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_test/app/core/locator_servise.dart' as di;

import 'app/presentation/bloc/all_users_cubit/all_users_bloc.dart';
import 'app/presentation/views/1_test/test.dart';
import 'app/core/locator_servise.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AllUsersCubit>(
          create: (context) => sl<AllUsersCubit>()..loadAllUsers(),
        ),
      ],
      child: const MaterialApp(
        home: Test(),
      ),
    );
  }
}
