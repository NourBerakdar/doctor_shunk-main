import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import BlocProvider from the flutter_bloc library.

import '../constant.dart';
import '../shared/cubit/cubit.dart';
import '../shared/cubit/states.dart';

class GaitAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          body: Container(
            decoration: backgroundDecoration(),
          ),
          appBar: appBar('تحليل المشية'),
        );
      }, //builder
    );
  }
}
