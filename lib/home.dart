import 'package:doctor_shunk/results.dart';
import 'package:doctor_shunk/shared/cubit/cubit.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import flutter_bloc

import 'choices diagnosis/diagnosis disease.dart';
import 'choices diagnosis/gait analysis.dart';
import 'choices diagnosis/mental status/screen1.dart';
import 'constant.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppStates>(
            listener: (BuildContext context, AppStates state) {},
            builder: (BuildContext context, AppStates state) {
              AppCubit cubit = AppCubit.get(context);
              return Scaffold(
                body: Container(
                  decoration: backgroundDecoration(),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("images/profile.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'اسم المريض',
                          style: TextStyle(
                              color: LightColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        diagnosisChoices('أسئلة تشخيصية سريرية', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DiagnosisDisease()));
                        }),
                        SizedBox(
                          height: 30,
                        ),
                        diagnosisChoices('الحالة العقلية', () {
                          // Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SlumsTestScreen1()));
                          // Navigator.pushNamed(context, '/second');
                        }),
                        SizedBox(
                          height: 30,
                        ),
                        diagnosisChoices('تحليل المشية', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GaitAnalysis()));
                        }),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Results()));
                          },
                          child: Container(
                            width: 80.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color:
                                  DarkColor, // Change the color to your desired background color
                            ),
                            // height: 70,
                            // width: 70,
                            // color: LightColor,
                            child: Center(
                              child: Text(
                                'النتيجة',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                appBar: appBar('الصفحة الرئيسية'),
              );
            }));
  }
}
