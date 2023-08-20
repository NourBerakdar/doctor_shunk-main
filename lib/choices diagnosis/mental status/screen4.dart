import 'dart:ffi';
import 'package:doctor_shunk/choices%20diagnosis/mental%20status/quesion.dart';
import 'package:doctor_shunk/constant.dart';
import 'package:doctor_shunk/shared/cubit/cubit.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constant styles text.dart'; // Import flutter_bloc

class SlumsTestScreen4 extends StatefulWidget {
  @override
  State<SlumsTestScreen4> createState() => _SlumsTestScreen4State();
}

class _SlumsTestScreen4State extends State<SlumsTestScreen4> {
  int selectedChoiceIndex = -1; // Initialize with -1 for no selection
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
                    itemCount: questions4.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          questions4[index].questionText,
                          textDirection: TextDirection.rtl,
                        ),
                        subtitle: TextField(
                          onChanged: (newValue) {
                            setState(() {
                              questions4[index].answer = newValue;
                            });
                          },
                          decoration: InputDecoration(
                              labelText: 'الجواب',
                              hintTextDirection: TextDirection.rtl),
                        ),
                      );
                    },
                  ),
                ),
              ),
              StyleEvaluationButton('النتيجة', () {
                print(questions3[0].answer);
                printAnswer(questions1, questions2, questions3, questions4);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => SlumsTestScreen3()));
              })
            ],
          ),
        );
      }, //builder
    );
  }
}
