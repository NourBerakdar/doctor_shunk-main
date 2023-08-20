import 'dart:ffi';
import 'package:doctor_shunk/choices%20diagnosis/mental%20status/screen2.dart';
import 'package:doctor_shunk/constant.dart';
import 'package:doctor_shunk/shared/cubit/cubit.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constant styles text.dart';
import 'quesion.dart'; // Import flutter_bloc

// @override
// Widget build(BuildContext context) {
//   return ListView.builder(
//     itemCount: questions.length,
//     itemBuilder: (BuildContext context, int index) {
//       return ListTile(
//         title: Text(questions[index].questionText),
//         subtitle: TextField(
//           onChanged: (newValue) {
//             setState(() {
//               questions[index].answer = newValue;
//             });
//           },
//           decoration: InputDecoration(labelText: 'Answer'),
//         ),
//       );
//     },
//   );
// }

class SlumsTestScreen1 extends StatefulWidget {
  @override
  State<SlumsTestScreen1> createState() => _SlumsTestScreen1State();
}

class _SlumsTestScreen1State extends State<SlumsTestScreen1> {
  String _arabicText = '';
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
                      itemCount: questions1.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          // if(index!=3){
                            
                          // }
                          title: Text(
                            questions1[index].questionText,
                            textDirection: TextDirection.rtl,
                          ),
                          subtitle: TextField(
                            onChanged: (newValue) {
                              setState(() {
                                questions1[index].answer = newValue;
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
                print(questions1[1].answer);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SlumsTestScreen2()));
              })
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     'الرجاء تذكر هذه الأشياء الخمسة سوف أسألك عليهم لاحقا :\n'
              //     'قلم - هاتف- تفاحة - سيارة - منزل',
              //     textAlign: TextAlign.center,
              //   ),
              // ),
            ],
          ),
        );
      }, //builder
    );
  }
}
