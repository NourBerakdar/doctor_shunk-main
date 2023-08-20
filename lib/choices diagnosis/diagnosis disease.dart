import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import BlocProvider from the flutter_bloc library.
import '../constant.dart';
import '../process results.dart';
import '../shared/cubit/cubit.dart';

class DiagnosisDisease extends StatefulWidget {
  @override
  State<DiagnosisDisease> createState() => _DiagnosisDiseaseState();
}

class _DiagnosisDiseaseState extends State<DiagnosisDisease> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
            appBar: appBar(
              'أسئلة سريرية',
            ),
            body: Container(
              decoration: backgroundDecoration(),
              child: Column(children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 22,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          title: Text(
                            questions[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                          value: cubit.checkedItems[index],
                          onChanged: (bool? value) {
                            setState(() {
                              cubit.checkedItems[index] = value!;
                            });
                          },
                          activeColor: DarkColor,
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.deepPurple[50],
                      child: Text(
                        cubit.responseBody,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    StyleEvaluationButton('النتيجة', () async {
                      dynamic response = cubit.MapFeatures(cubit.checkedItems);
                      cubit.changeResponseBody(response);
                    }),
                  ],
                ),
              ]),
            ));
      }, //builder
    );
  }
}
