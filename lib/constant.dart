import 'package:flutter/material.dart';

dynamic LightColor = const Color(0xFF7A87FB);

dynamic DarkColor = const Color(0xFF4E56A0);

AppBar appBar(String title) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.home,
          color: DarkColor,
          size: 40,
        ),
        // SizedBox(width: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: DarkColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        ),
        // SizedBox(width: 8),
        Icon(
          Icons.menu,
          color: DarkColor,
          size: 40,
        ),
      ],
    ),
    backgroundColor: Colors.transparent,
    elevation: 0, // Remove the shadow
  );
}

BoxDecoration backgroundDecoration() {
  return const BoxDecoration(
    image: DecorationImage(
        image: AssetImage('images/background.png'), fit: BoxFit.cover),
  );
}

Container inputField(
    TextEditingController controller, String label, IconData iconData) {
  return Container(
    width: 300,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(
        color: LightColor, // Set the border color here
        width: 2.0, // Set the border width
      ),
    ),
    child: TextField(
      controller: controller,
      style: TextStyle(
        color: DarkColor,
      ),
      decoration: InputDecoration(
        // labelText: label,
        hintText: label,
        hintStyle: TextStyle(
          color: LightColor,
        ),
        prefixIcon: Icon(
          iconData,
          color: LightColor,
        ),
      ),
    ),
  );
}

GestureDetector diagnosisChoices(String choice, Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: LightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          choice,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

GestureDetector Patient(String name) {
  return GestureDetector(
    onTap: () {
      // Button action
    },
    child: Column(
      children: [
        Container(
          width: 350,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(
              color: LightColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(200),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_sharp,
                  size: 40,
                  color: LightColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: DarkColor,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30)
      ],
    ),
  );
}

ElevatedButton StyleEvaluationButton(String textButton, Function() onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(textButton,
        textDirection: TextDirection.rtl,
        style: TextStyle(color: Colors.white, fontSize: 20)),
    style: ButtonStyle(
        // shape: CircleBorder,
        backgroundColor: MaterialStateProperty.all(DarkColor),
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
  );
}
