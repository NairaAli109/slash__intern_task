import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_intern_task/shared/cubit/states.dart';
import '../components/component.dart';
import '../network/local/cache_helper.dart';

class AppCubit extends Cubit<AppStates>{

  AppCubit():super(AppInitialState());

  static AppCubit get(context)=> BlocProvider.of(context);

  bool isDark=false;

  void changeAppMode({bool? fromShared})
  {
    if (fromShared!= null)
    {
      isDark=fromShared;
      //print('++++++++++++++++++++++++++from shared $isDark');
      emit(AppChangeModeState());
    }
    else
    {
      isDark=!isDark;
      // print('++++++++++++++++++++++++++is dark $isDark');
      CacheHelper.putBoolean(
        key: 'isDark',
        value: isDark,
      ).then((value) {
        emit(AppChangeModeState());
      });
    }
  }

}

class SlashAppCubit extends Cubit<SlashAppStates>{

  SlashAppCubit(): super(CounterInitialStates());

  static SlashAppCubit get(context)=>BlocProvider.of(context);

  int counter=0;

  void plusButton(){
    counter++;
    emit(CounterPlusState(counter));
  }

  void minusButton(){
    counter--;
    emit(CounterMinusState(counter));
  }

  bool? blackColorSelected;
  bool? redColorSelected;
  bool? greenColorSelected;

  void displayBlackWidget(context){
    firstImageContainer(
      context,
      blackProductImages,
    );
  }

  List<Color> productColor=[
    Colors.black,
    Colors.red,
    Colors.green,
  ];
  List<String> blackProductImages=[
    'assets/images/black1.png',
    'assets/images/black2.png',
    'assets/images/size_chart.png',
  ];
  List<String> redProductImages=[
    'assets/images/red1.png',
    'assets/images/red2.png',
    'assets/images/size_chart.png',
  ];
  List<String> greenProductImages=[
    'assets/images/green1.png',
    'assets/images/green2.png',
    'assets/images/size_chart.png',
  ];
  bool addedToCart=true;

  bool isSelectedSize= false;

  List<String> productSizes=[
    'Small',
    'XX Large',
    'X Large',
    'Large',
    'Medium',
  ];

  List<bool> selectedProductSize=[
    false,
    false,
    false,
    false,
    true,
  ];

  void changeSize1Color(){
    for(int i=0; i<=selectedProductSize.length; i++){
      if(selectedProductSize[1]==true &&
          selectedProductSize[2]==false &&
          selectedProductSize[3]==false &&
          selectedProductSize[4]==false
      ){
        selectedProductSize[1]= !selectedProductSize[1];
        selectedProductSize[0]= !selectedProductSize[0];
      }
      else if(selectedProductSize[1]==false &&
          selectedProductSize[2]==true &&
          selectedProductSize[3]==false &&
          selectedProductSize[4]==false
      ){
        selectedProductSize[2]= !selectedProductSize[2];
        selectedProductSize[0]= !selectedProductSize[0];
      }
      else if(selectedProductSize[1]==false &&
          selectedProductSize[2]==false &&
          selectedProductSize[3]==true &&
          selectedProductSize[4]==false
      ){
        selectedProductSize[3]= !selectedProductSize[3];
        selectedProductSize[0]= !selectedProductSize[0];
      }
      else if(selectedProductSize[1]==false &&
          selectedProductSize[2]==false &&
          selectedProductSize[3]==false &&
          selectedProductSize[4]==true
      ){
        selectedProductSize[4]= !selectedProductSize[4];
        selectedProductSize[0]= !selectedProductSize[0];
      }
    }
  }
}
