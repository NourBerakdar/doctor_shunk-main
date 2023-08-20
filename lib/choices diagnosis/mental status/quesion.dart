class Question {
  final String questionText;
  String answer;

  Question(this.questionText, this.answer);
}

List<Question> questions1 = [
  Question('في أي يوم من الأسبوع نحن الآن؟', ''),
  Question('في أي سنة نحن الآن؟', ''),
  Question('في أي بلد نحن الآن؟', ''),
  Question(
      'الرجاء تذكر هذه الأشياء الخمسة سوف أسألك عليهم لاحقا :\n'
          'قلم - هاتف- تفاحة - سيارة - منزل',
      ''),

  Question(
      'لديك مبلغ 100 دولار وذهبت إلى السوق واشتريت دزدينة تفاح بسعر 3 دولارات ودراجة بسعر 20 دولار\n'
          'كم صرفت من ذلك المبلغ؟',
      ''),
  Question('كم تبقى لك من ذلك المبلغ؟', ''),
  Question('الرجاء سمي أكبر عدد ممكن من الحيوانات خلال دقيقة واحدة', ''),
  // Add more questions as needed
];

List<Question> questions2 = [
  Question('ما هي الأشياء الخمسة التي طلبت منك أن تتذكرها ؟', ''),
  Question(
      'سوف أعطيك سلسلة من الأرقام وأريدك أن تعطيني اياها معكوسة ، على سبيل المثال : إذا قلت 4,2 عليك أن تقول 2,4'
          '8,7',
      ''),
  Question('7,4,9', ''),
  Question('8,5,3,7', ''),
  Question(
      'الرجاء اكتب الوقت المناسب بشكل ساعة رقمية :'
          'عشر دقائق قبل الحادية عشر',
      ''),
];

List<Question> questions3 = [
  Question('الرجاء ضع اشارة صح على المثلث:', ''),
  Question('أي من الرسوم هي الأكبر', '')
];

List<Question> questions4 =  [
  Question('سوف أخبرك القصة التالية : الرجاء أن تصغي إليً بعناية ، لأن بعد ذلك سوف أطرح عليك بعض الأسئلة حولها :'
      'ليلى معلمة ناجحة جداً . تعلًم اللغة العربية في الصفوف الابتدائية . ومن ثمً تعرفت على سمير ، وهو شاب جذًابٌ جداً . لقد تزوًجا ورُزقا بثلاثة أولاد .عاشا في القاهرة ، ومن ثمّ توقفت عن العمل وبقيت في المنزل تُربي أولادها . عندما أصبح أولادها في سن المراهقة عادت لتزاول عملها . وعاشت مع سمير سعيدة مدى الحياة .',
  ''),
  Question('ما هو اسم المرأة ؟',''),
  Question('ما هي مهنتها ؟',''),
  Question('متى عادت تُزاول عملها ؟',''),
  Question('في أي بلد تعيش ؟','')
];

//to print all answer of questions in text field
void printAnswer(List<Question> q1, List<Question> q2, List<Question> q3,
    List<Question> q4) {
  dynamic q = q1 + q2 + q3 + q4;
  q.forEach((item) {
    print(item.answer);
  });
}

// for question image
List<Map<String, dynamic>> answerChoices = [
  {
    'text': 'Correct',
    'image': 'images/tringle.PNG', // Replace with actual path or URL
  },
  {
    'text': 'Incorrect',
    'image': 'images/rectangulr.PNG', // Replace with actual path or URL
  },
  {
    'text': 'Incorrect',
    'image': 'images/square.PNG', // Replace with actual path or URL
  },
  // Add more choices
];
