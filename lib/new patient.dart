import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class NewPatient extends StatelessWidget {
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _oldEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              inputField(_nameEditingController,'Name',Icons.person),
              SizedBox(
                height: 20,
              ),
              inputField(_oldEditingController,'Age',Icons.calendar_month),
              SizedBox(
                height: 30,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Button action
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:  LightColor,
                    ),
                    child: Center(
                      child: Text(
                        'add',
                        style: TextStyle(
                          color: Colors.white,
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
      appBar:appBar('New patient')
    );
  }
}
