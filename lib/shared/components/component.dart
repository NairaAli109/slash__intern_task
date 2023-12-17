

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:slash_intern_task/shared/styles/colors.dart';

import '../styles/size.dart';

void showToast({
  required String text,
  required ToastStates states,
}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(states),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastStates { SUCCESS, ERROR, WARRNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.WARRNING:
      color = lightGreen;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
  }
  return color;
}

Widget verticalDivider()=>   VerticalDivider(
  thickness: 1,
  color: lightGrey,
);

Widget firstImageContainer(context,List<String> image)=>SizedBox(
  width: double.infinity,
  height: height(context, 2.7),
  child: ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(
            start: 20, top: 20, end: 10),
        child: Container(
          width: width(context, 1.6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image(
            image: AssetImage(
              image[index],
            ),
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
      itemCount: image.length
  ),
);

Widget secondImageContainer(context,List<String> image)=>SizedBox(
    width: double.infinity,
    height: height(context, 14),
    child: Center(
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Center(
            child: InkWell(
              onTap: (){},
              child: Container(
                width: width(context, 7.4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image(
                  image: AssetImage(
                    image[index],
                  ),
                ),
              ),
            ),
          ),
          separatorBuilder: (context, index) =>
          const SizedBox(
            width: 20,
          ),
          itemCount: 3),
    )
  // child:Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: [
  //     InkWell(
  //       onTap: (){
  //
  //       },
  //       child: Container(
  //         width: width(context, 7.4),
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(12),
  //         ),
  //         child: Image(
  //           image: AssetImage(
  //             image[index],
  //           ),
  //         ),
  //       ),
  //     ),
  //     const SizedBox(width: 7,),
  //     InkWell(
  //       onTap: (){},
  //       child: Container(
  //         width: width(context, 7.4),
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(12),
  //         ),
  //         child: Image(
  //           image: AssetImage(
  //             image[index],
  //           ),
  //         ),
  //       ),
  //     ),
  //     const SizedBox(width: 7,),
  //     InkWell(
  //       onTap: (){},
  //       child: Container(
  //         width: width(context, 7.4),
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(12),
  //         ),
  //         child: Image(
  //           image: AssetImage(
  //             image[index],
  //           ),
  //         ),
  //       ),
  //     ),
  //   ],
  // ) ,
);