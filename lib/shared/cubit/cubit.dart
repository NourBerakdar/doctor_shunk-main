import 'package:bloc/bloc.dart';
import 'package:doctor_shunk/choices%20diagnosis/mental%20status/quesion.dart';
import 'package:doctor_shunk/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../fast api.dart';
import '../../process results.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState()); // to start the application
  // to be more easily when use it in many places
  static AppCubit get(context) => BlocProvider.of(context);

  List<bool?> checkedItems = List<bool?>.filled(22, false);

  String responseBody = ''; // To store the response body data
  String state_mental = ''; //to store response body of mental status

  dynamic CheckedItems(List<bool?> chekedITems) {
    checkedItems = chekedITems;
    emit(AppChangeCheckedItems());
  }

  ///sending Features to API
  Future<String> MapFeatures(List values) async {
    Map resultMap = answersQuestionsMap(
        values); //to assign checked item from ui to make question with answer
    Map binaryFeaturesMap = BinaryConverter(
        resultMap); //to  convert  Map false/true answer to 0/1 answer
    Future<String> response =
        sendQuestionsToFastAPI(binaryFeaturesMap); //sending to API
    // emit(AppChangeFastApi());
    return response;
  }

  dynamic changeResponseBody(dynamic response) async {
    responseBody = await response;
    emit(AppChangeResponseBody());
  }

  dynamic changeResponseMentalBody(dynamic response) async {
    state_mental = await response;
    emit(AppChangeMentalResponseBody());
  }

//to print text based on number of diagnosis
  String changeTextResponseBody() {
    if (responseBody[1] == '0')
      return 'لا يوجد تصلب لويحي';
    else
      return 'يوجد تصلب لويحي';
  }


 String changeMentalResponseBody() {
    if (state_mental == 'normal')
      return 'ادراك طبيعي';
    else if(state_mental=='mini')
      return 'تدهور عقلي خفيف';
    else return'لم يكمل باقي التشخيص';
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

  List<Question> questions4 = [
    Question(
        'سوف أخبرك القصة التالية : الرجاء أن تصغي إليً بعناية ، لأن بعد ذلك سوف أطرح عليك بعض الأسئلة حولها :'
            'ليلى معلمة ناجحة جداً . تعلًم اللغة العربية في الصفوف الابتدائية . ومن ثمً تعرفت على سمير ، وهو شاب جذًابٌ جداً . لقد تزوًجا ورُزقا بثلاثة أولاد .عاشا في القاهرة ، ومن ثمّ توقفت عن العمل وبقيت في المنزل تُربي أولادها . عندما أصبح أولادها في سن المراهقة عادت لتزاول عملها . وعاشت مع سمير سعيدة مدى الحياة .',
        ''),
    Question('ما هو اسم المرأة ؟', ''),
    Question('ما هي مهنتها ؟', ''),
    Question('متى عادت تُزاول عملها ؟', ''),
    Question('في أي بلد تعيش ؟', '')
  ];
}
