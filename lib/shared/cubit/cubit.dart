import 'package:bloc/bloc.dart';
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

  dynamic CheckedItems(List<bool?> chekedITems) {
    checkedItems = chekedITems;
    emit(AppChangeCheckedItems());
  }

  ///sending Features to API
  Future<String> MapFeatures(List values) async {
    Map resultMap = answersQuestionsMap(values); //to assign checked item from ui to make question with answer
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

  String changeTextResponseBody() {
    if (responseBody[1] == '0')
      return 'لا يوجد تصلب لويحي';
    else
      return 'يوجد تصلب لويحي';
  }
}
