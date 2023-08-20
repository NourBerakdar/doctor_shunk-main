import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class PatientsRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: backgroundDecoration(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [

                  Patient('Patient1'),
                  Patient('Patient2'),
                  Patient('Patient3'),
                ],
              ),
            ),
          ),

        ),
      appBar: appBar('Patients Records'),
    );
  }


}

