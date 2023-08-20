import 'dart:ffi';
import 'package:audioplayers/audioplayers.dart';
import 'package:doctor_shunk/choices%20diagnosis/mental%20status/process%20questions.dart';
import 'package:doctor_shunk/choices%20diagnosis/mental%20status/quesion.dart';
import 'package:doctor_shunk/constant.dart';
import 'package:doctor_shunk/shared/cubit/cubit.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constant styles text.dart'; // Import flutter_bloc
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class SlumsTestScreen4 extends StatefulWidget {
  @override
  State<SlumsTestScreen4> createState() => _SlumsTestScreen4State();
}

class _SlumsTestScreen4State extends State<SlumsTestScreen4> {
  @override
  AudioPlayer audioPlayer = AudioPlayer();

// Future<void> playSound() async {
//   AudioCache audioCache = AudioCache();
//   await audioCache.play("assets/record11.mp3"); // Replace with the correct asset path
// }

// Future<void> playSound() async {
//     final player = AudioCache();
//   await player.play('assets/record11.mp3'); // Replace with the correct asset path
// }

//  Future<void> playSound() async {
//     await audioPlayer.play("assets\record11.mp3"
//         as Source); // Replace with the path to your sound file
//     // There's no result to check here, as audioPlayer.play returns void.

//   }

  Widget build(BuildContext context) {
    dynamic state_mental = '';
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        // AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          appBar: appBar('الحالة العقلية'),
          body: Column(
            children: [
              // ElevatedButton(
              //   onPressed: () {
              //     // playSound();
              //   },
              //   child: Text("اضغط على الزر لسماع القصة"),
              // ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.deepPurple[50],
                    child: Text(
                      state_mental,
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
                  StyleEvaluationButton('النتيجة', () {
                    dynamic values = getAllResult(
                        questions1, questions2, questions3, questions4);
                    state_mental = sendAnswersToFastAPI(values);
                    print(state_mental);
                  })
                ],
              ),
            ],
          ),
        );
      }, //builder
    );
  }
}
