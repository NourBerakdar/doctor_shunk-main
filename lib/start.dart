import 'package:doctor_shunk/constant.dart';
import 'package:doctor_shunk/patients%20records.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new patient.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                height: 200,
                width: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                ),),
              ),
              Container(
                height: 100,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/explain.png'),
                  ),),
              ),
              const SizedBox(
                height: 70,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => NewPatient()),
                    // );
                  },
                  child: Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      color: LightColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'New Patient',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => PatientsRecords()),
                    // );
                  },
                  child: Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: LightColor, // Set the border color here
                        width: 2.0, // Set the border width
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'View Patient',
                        style: TextStyle(
                          color: LightColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: appBar('Start')
    );
  }
}
