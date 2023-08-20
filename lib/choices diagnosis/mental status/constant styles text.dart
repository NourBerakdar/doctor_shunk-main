import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

List<String> QuestionMental =
    MentalQuestions1 + MentalQuestions2 + MentalQuestions3;

List<String> MentalQuestions1 = [
  //  'في أي يوم من الأسبوع نحن عليه الآن؟\n',
  'في أي يوم من الأسبوع نحن الآن؟',
  'في أي سنة نحن الآن؟',
  'في أي بلد نحن الآن؟',
  'الرجاء تذكر هذه الأشياء الخمسة سوف أسألك عليهم لاحقا :\n'
      'قلم - هاتف- تفاحة - سيارة - منزل',
  'لديك مبلغ 100 دولار وذهبت إلى السوق واشتريت دزدينة تفاح بسعر 3 دولارات ودراجة بسعر 20 دولار\n'
      'كم صرفت من ذلك المبلغ؟',
  'كم تبقى لك من ذلك المبلغ؟',
  'الرجاء سمي أكبر عدد ممكن من الحيوانات خلال دقيقة واحدة',
];

List<String> MentalQuestions2 = [
  'ما هي الأشياء الخمسة التي طلبت منك أن تتذكرها ؟',
  'سوف أعطيك سلسلة من الأرقام وأريدك أن تعطيني اياها معكوسة ، على سبيل المثال : إذا قلت 4,2 عليك أن تقول 2,4'
      '8,7',
  '7,4,9',
  '8,5,3,7',
  'الرجاء اكتب الوقت المناسب بشكل ساعة رقمية :'
      'عشر دقائق قبل الحادية عشر',
  'الرجاء ضع اشارة صح على المثلث:',
  'أي من الرسوم هي الأكبر',
];

List<String> MentalQuestions3 = [
  'سوف أخبرك القصة التالية : الرجاء أن تصغي إليً بعناية ، لأن بعد ذلك سوف أطرح عليك بعض الأسئلة حولها :'
      'ليلى معلمة ناجحة جداً . تعلًم اللغة العربية في الصفوف الابتدائية . ومن ثمً تعرفت على سمير ، وهو شاب جذًابٌ جداً . لقد تزوًجا ورُزقا بثلاثة أولاد .عاشا في القاهرة ، ومن ثمّ توقفت عن العمل وبقيت في المنزل تُربي أولادها . عندما أصبح أولادها في سن المراهقة عادت لتزاول عملها . وعاشت مع سمير سعيدة مدى الحياة .',
  'ما هو اسم المرأة ؟',
  'ما هي مهنتها ؟',
  'متى عادت تُزاول عملها ؟',
  'في أي بلد تعيش ؟',
];

Text QuestionTextStyle(text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    textDirection: TextDirection.rtl,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
}

TextFormField AnsewerTextField() {
  return TextFormField(
    textAlign: TextAlign.center, // Right-align text
    textDirection: TextDirection.rtl, // Set RTL direction
  );
}
