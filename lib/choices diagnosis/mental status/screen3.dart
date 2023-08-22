import 'dart:ffi';

import 'package:doctor_shunk/choices%20diagnosis/mental%20status/quesion.dart';
import 'package:doctor_shunk/choices%20diagnosis/mental%20status/screen4.dart';
import 'package:doctor_shunk/constant.dart';
import 'package:doctor_shunk/shared/cubit/cubit.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constant styles text.dart'; // Import flutter_bloc

class SlumsTestScreen3 extends StatefulWidget {
  @override
  State<SlumsTestScreen3> createState() => _SlumsTestScreen3State();
}

class _SlumsTestScreen3State extends State<SlumsTestScreen3> {
  int selectedChoiceIndex = -1; // Initialize with -1 for no selection
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          appBar: appBar('الحالة العقلية'),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: backgroundDecoration(),
              child: Column(
                children: <Widget>[
                  // Image.asset('images/tringle.PNG'), // Replace with the actual path of the triangle image
                  QuestionTextStyle('الرجاء ضع اشارة صح على المثلث'),
                  // Text('الرجاء ضع اشارة صح على المثلث'),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: answerChoices.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RadioListTile(
                        value: index,
                        groupValue: selectedChoiceIndex,
                        onChanged: (value) {
                          setState(() {
                            selectedChoiceIndex = value!;
                            // print(value);
                            cubit.questions3[0].answer =
                                selectedChoiceIndex.toString();
                          });
                        },
                        // title: Text(answerChoices[index]['text']),
                        secondary: Image.asset(answerChoices[index]['image']),
                      );
                    },
                  ),
                  QuestionTextStyle('أي من الرسوم هي الأكبر'),
                  TextField(
                    onChanged: (newValue) {
                      setState(() {
                        cubit.questions3[1].answer = newValue;
                      });
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  StyleEvaluationButton('التالي', () {
                    // print(questions3[0].answer);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SlumsTestScreen4()));
                  }),
                ],
              ),
            ),
          ),

          // Column(
          //   children: [
          //     Expanded(
          //       child: Container(
          //           decoration: backgroundDecoration(),
          //           child: ListView.builder(
          //             itemCount: questions2.length,
          //             itemBuilder: (BuildContext context, int index) {
          //               return ListTile(
          //                 title: Text(
          //                   questions2[index].questionText,
          //                   textDirection: TextDirection.rtl,
          //                 ),
          //                 subtitle: TextField(
          //                   onChanged: (newValue) {
          //                     setState(() {
          //                       questions2[index].answer = newValue;
          //                     });
          //                   },
          //                   decoration: InputDecoration(
          //                       labelText: 'الجواب',
          //                       hintTextDirection: TextDirection.rtl),
          //                 ),
          //               );
          //             },
          //           )),
          //     ),
          //     StyleEvaluationButton('النتيجة', () {
          //       printAnswer(questions1, questions2);
          //       print(questions2[1].answer);
          //       // Navigator.push(
          //       //     context,
          //       //     MaterialPageRoute(
          //       //         builder: (context) => SlumsTestScreen2()));
          //     })
          //     // Padding(
          //     //   padding: const EdgeInsets.all(8.0),
          //     //   child: Text(
          //     //     'الرجاء تذكر هذه الأشياء الخمسة سوف أسألك عليهم لاحقا :\n'
          //     //     'قلم - هاتف- تفاحة - سيارة - منزل',
          //     //     textAlign: TextAlign.center,
          //     //   ),
          //     // ),
          //   ],
          // ),
        );
      }, //builder
    );
  }
}
