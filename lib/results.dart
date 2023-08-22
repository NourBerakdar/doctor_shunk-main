import 'dart:ffi';

import 'package:doctor_shunk/constant.dart';
import 'package:doctor_shunk/shared/cubit/cubit.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import flutter_bloc

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {},
        builder: (BuildContext context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            body: Container(
                decoration: backgroundDecoration(),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(cubit.changeTextResponseBody(),style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(width: 20,),
                          Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              color: LightColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child:resultText('الأسئلة السريرية'),
                              
                            ),
                          ),

                        ],
                      ),
                    SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(cubit.changeMentalResponseBody(),style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(width: 20,),
                          Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: LightColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child:resultText('الحالة العقلية'),
                              
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                )),
            appBar: appBar('نتائج التشخيص'),
          );
        });
  }
}
