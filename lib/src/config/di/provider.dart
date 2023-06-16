import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/auth_cubit/auth_cubit.dart';

final allProviders = <SingleChildWidget>[
  BlocProvider(create: (_) => AuthCubit()),
];
