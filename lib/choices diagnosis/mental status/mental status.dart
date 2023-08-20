// import 'package:doctor_shunk/shared/cubit/cubit.dart';
// import 'package:doctor_shunk/shared/cubit/states.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../constant.dart';
// import 'mental questions.dart';
// import 'mental status 2.dart';

// class MentalStatus extends StatefulWidget {
//   @override
//   State<MentalStatus> createState() => _MentalStatusState();
// }

// class _MentalStatusState extends State<MentalStatus> {
//   @override

//   List<String> daysOfWeek = [
//     'السبت',
//     'الأحد',
//     'الاثنين',
//     'الثلاثاء',
//     'الأربعاء',
//     'الخميس',
//     'الجمعة',
//   ];

//    String _selectedDay='السبت';
//    int selectedYear=2000;

//   Widget build(BuildContext context) {
//     return BlocConsumer<AppCubit, AppStates>(
//         listener: (BuildContext context, AppStates state) {},
//         builder: (BuildContext context, AppStates state) {
//           return Scaffold(
//             body: Container(
//               decoration: backgroundDecoration(),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Expanded(

//                     child:
//                     ListView.builder(
//                         itemCount: MentalQuestions.length,
//                         itemBuilder: (context, index) {
//                           return   Text(
//                             MentalQuestions[index],
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18.0,
//                               // color: Colors.black
//                             ),
//                             textDirection: TextDirection.rtl,
//                           );

//                         }
//                     ),
//                   ),
//                   // Container(
//                   //     decoration: backgroundDecoration()
//                   // ),
//                   // Row(
//                   //   mainAxisAlignment: MainAxisAlignment.end,
//                   //   children: [
//                   //
//                   //     Center(
//                   //       child: DropdownButton<String>(
//                   //         value: _selectedDay,
//                   //         onChanged: (String ?newValue) {
//                   //           setState(() {
//                   //             _selectedDay = newValue!;
//                   //           });
//                   //         },
//                   //         items: daysOfWeek.map<DropdownMenuItem<String>>((String value) {
//                   //           return DropdownMenuItem<String>(
//                   //             value: value,
//                   //             child: Text(value),
//                   //           );
//                   //         }).toList(),
//                   //       ),
//                   //     ),
//                   //     SizedBox(width: 10,),
//                   //     Text(
//                   //         'في أي يوم من الأسبوع نحن عليه الآن ؟',
//                   //       textDirection: TextDirection.rtl,
//                   //       style: TextStyle(
//                   //         fontSize: 18,
//                   //         fontWeight: FontWeight.bold
//                   //       ),
//                   //     ),
//                   //
//                   //   ],
//                   //
//                   // ),
//                   // SizedBox(),
//                   // Row(
//                   //   mainAxisAlignment: MainAxisAlignment.end,
//                   //   children: [
//                   //
//                   //     Center(
//                   //       child: DropdownButton<int>(
//                   //         hint: Text('Select a year'),
//                   //         value: selectedYear,
//                   //         onChanged: (int ?newValue) {
//                   //           setState(() {
//                   //             selectedYear = newValue!;
//                   //           });
//                   //         },
//                   //         items: List.generate(30, (index) {
//                   //           int currentYear = 2000 + index;
//                   //           return DropdownMenuItem<int>(
//                   //             value: currentYear,
//                   //             child: Text(currentYear.toString()),
//                   //           );
//                   //         }),
//                   //       ),
//                   //     ),
//                   //     SizedBox(width: 10,),
//                   //     Text(
//                   //       'في أي سنة نحن؟',
//                   //       textDirection: TextDirection.rtl,
//                   //       style: TextStyle(
//                   //           fontSize: 18,
//                   //           fontWeight: FontWeight.bold
//                   //       ),
//                   //     ),
//                   //
//                   //   ],
//                   //
//                   // ),
//                   GestureDetector(
//                     onTap: (){
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => MentalStatus2 ()));
//                     },
//                     child: Container(
//                       width: 80.0,
//                       height: 60.0,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         color: DarkColor, // Change the color to your desired background color
//                       ),
//                       // height: 70,
//                       // width: 70,
//                       // color: LightColor,
//                       child: Center(
//                         child: Text('النتيجة',
//                           textDirection: TextDirection.rtl,
//                           style: TextStyle(color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,

//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//             ),
//             appBar: appBar('الحالة العقلية'),
//           );
//         });
//   }
// }
