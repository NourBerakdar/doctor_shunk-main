// import 'package:doctor_shunk/shared/cubit/cubit.dart';
// import 'package:doctor_shunk/shared/cubit/states.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../constant.dart';
// import 'mental questions.dart';

// class MentalStatus2 extends StatefulWidget {
//   @override
//   State<MentalStatus2> createState() => _MentalStatus2State();
// }

// class _MentalStatus2State extends State<MentalStatus2> {
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

//   String _selectedDay='السبت';
//   int selectedYear=2000;

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
//                         itemCount: MentalQuestions2.length,
//                         itemBuilder: (context, index) {
//                           return   Text(
//                             MentalQuestions2[index],
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

//                 ],
//               ),

//             ),
//             appBar: appBar('الحالة العقلية'),
//           );
//         });
//   }
// }
