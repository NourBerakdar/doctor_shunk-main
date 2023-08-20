import 'package:http/http.dart' as http;

import 'fast api.dart';


/// to  convert  Map false/true answer to 0/1 answer
Map BinaryConverter(dynamic FalseTrueMap){
  Map<String, int> binaryFeaturesMap = {};
  FalseTrueMap.forEach((key, value) {
    binaryFeaturesMap[key] = value ? 1 : 0;
  });
  return binaryFeaturesMap;
}



//to send this features to api
// void features(dynamic result){
//
//   //for convert  result false/true answer to 0/1
//   Map<String, int> featuresMap = {};
//   result.forEach((key, value) {
//     featuresMap[key] = value ? 1 : 0;
//   });
//
//   // print(featuresMap);
//   sendQuestionsToFastAPI(featuresMap);
//   // return featuresMap;
// }
//


/// This List for print arabic questions in UI
List<String> questions = [
  'العمر بين 20-40',
  'هل مدخن أم لا؟',
  'وجود أمراض سابقة مثل مرض الذئبة(SLE) -  بهجت - Sarcoidosis(الساركويد)',
  'هل يوجد أقارب في العائلة يعاني من التصلب اللويحي سواء من الدرجة الأولى أو الدرجة الثانية؟',
  'هل يعاني من مرض سكري',
  'هل يوجد مشاكل في العين؟',
  'هل القدرة البصرية قادرة للتصحيح من قبل العدسات؟',
  'وجود عيب حدقة Marcus Gunn أي تتقبض الحدقة وتتوسع على الضوء؟',
  'وجود تطاول الموجة P100 عن طريق قياسها بال VIP',
  'وجود التهاب نخاع رقبي أي ضعف بالأطراف الأربعة مع نقص حس في هذه الأطراف؟',
  'هل يوجد التهاب نخاع ظهري؟',
  'هل يوجد صعوبة في الحركة حيث تكون صعوبة الحركة في قدم واحدة وقد تكون في القدمين؟',
  'هل المنعكسات تكون طبيعية أو نشطة أو مشتدة: إذا قمنا بالنقر على العظم يقوم بفعل عكسي؟',
  'غياب المنعكسات الجلدية البطنية (نحو السرة)؟ حيث المنعكسات البطنية عبارة عن تقبض عضلات جدار البطن عند ضرب الجلد فوقها؟',
  'وجود أسر بولي أو سلس بولي؟',
  'أخمصي بالبسط (أو علامة بابنسكي): وهو عبارة عن بسط إبهام القدم عند تنبيه أسفل القدم؟',
  'شلل بين النوى: أي: عين ثابتة وعين أخرى تستجيب استجابة نفضية؟',
  'الرنح (عدم التوازن): أي صعوبة في المشي وحفظ التوازن، وتناسق حركة اليد والكلام والبلع، وحركات العينين؟',
  'وجود ألم مثلث التواءم: أي ألم العصب العيني والعصب الفكي العلوي والعصب الفكي السفلي؟',
  'ظهور الأعراض المرضية للتصلب اللويحي أقل من ست ساعات أو أكثر من أسبوع؟',
  'وجود حرارة لدى الشخص مع هذه الأعراض؟',
  'هل يعاني المريض من نقص فيتامين أو عوز النحاس B12 وقد تم إعطاءه B12 وقد أظهر تحسنه خلال أشهر؟',
];


/// This List for english questions for sending to fast api
List<String>Questions=
['Age_20_40',
  'smoking',
  'previous_illnesses',
  'ms_degree_1_2',
  'diabetes',
  'eye_problems',
  'Correction_of_visual_ability_by_lenses',
  'Marcus_Gunn_defect',
  'P100_wave_by_VEP',
  'cervical_myelitis',
  'dorsal_spine',
  'difficulty_moving',
  'Normal_active_intense_reflexes',
  'Absence_of_abdominal_cutaneous_reflexes',
  'Urine_retention_or_Enuresis',
  'papinsky_sign',
  'internuclear_paralysis',
  'imbalance',
  'Trigeminal_pain',
  'symptoms_less_than_6_hours_or_more_than_week',
  'Fever_with_symptoms',
  'suffer_vitamin_D_or_B12_and_has_shown_improvement_within_months',];



///to assign checked item from ui to make question with answer
Map answersQuestionsMap(List values){

  Map<String, bool> resultMap = Map.fromEntries(Questions.asMap().entries.map((entry) {
    int index = entry.key;
    String key = entry.value;
    bool value = values[index];
    return MapEntry(key, value);
  }));

  return resultMap;
}


///sending Features to API
Future<String> MapFeatures(List values){
  Map resultMap =answersQuestionsMap(values); //to assign checked item from ui to make question with answer
  Map binaryFeaturesMap = BinaryConverter(resultMap);  //to  convert  Map false/true answer to 0/1 answer
 return  sendQuestionsToFastAPI(binaryFeaturesMap); //sending to API
}