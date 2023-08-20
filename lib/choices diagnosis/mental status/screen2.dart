import 'dart:ffi';

import 'package:doctor_shunk/choices%20diagnosis/mental%20status/quesion.dart';
import 'package:doctor_shunk/choices%20diagnosis/mental%20status/screen3.dart';
import 'package:doctor_shunk/constant.dart';
import 'package:doctor_shunk/shared/cubit/cubit.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constant styles text.dart'; // Import flutter_bloc



class SlumsTestScreen2 extends StatefulWidget {
  @override
  State<SlumsTestScreen2> createState() => _SlumsTestScreen2State();
}

class _SlumsTestScreen2State extends State<SlumsTestScreen2> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        // AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          appBar: appBar('الحالة العقلية'),
          body: Column(
            children: [
              Expanded(
                child: Container(
                    decoration: backgroundDecoration(),
                    child: ListView.builder(
                      itemCount: questions2.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            questions2[index].questionText,
                            textDirection: TextDirection.rtl,
                          ),
                          subtitle: TextField(
                            onChanged: (newValue) {
                              setState(() {
                                questions2[index].answer = newValue;
                              });
                            },
                            decoration: InputDecoration(
                                labelText: 'الجواب',
                                hintTextDirection: TextDirection.rtl),
                          ),
                        );
                      },
                    )),
              ),
              StyleEvaluationButton('التالي', () {
               
                // print(questions2[1].answer);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SlumsTestScreen3()));
              })
            ],
          ),
        );
      }, //builder
    );
  }
}
