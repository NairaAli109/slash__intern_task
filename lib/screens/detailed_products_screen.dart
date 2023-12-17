import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_intern_task/shared/cubit/cubit.dart';
import 'package:slash_intern_task/shared/cubit/states.dart';
import 'package:slash_intern_task/shared/styles/colors.dart';
import 'package:slash_intern_task/shared/styles/size.dart';

import '../shared/components/component.dart';

class DetailedProductScreen extends StatefulWidget {
  const DetailedProductScreen({Key? key}) : super(key: key);

  @override
  State<DetailedProductScreen> createState() => _DetailedProductScreenState();
}

class _DetailedProductScreenState extends State<DetailedProductScreen> {



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SlashAppCubit, SlashAppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit= SlashAppCubit.get(context);
        int Index0=0;
        int Index1=1;
        int Index2=2;
        return Scaffold(
            appBar: AppBar(
              leading: const Icon(Icons.arrow_back_ios_new),
              title: const Text('Product Details'),
              actions: [
                IconButton(
                    onPressed: () {
                      AppCubit.get(context).changeAppMode();
                    },
                    icon: const Icon(Icons.settings))
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if(cubit.blackColorSelected==true)
                      firstImageContainer(
                        context,
                        cubit.blackProductImages,
                      )
                    else if(cubit.redColorSelected==true)
                      firstImageContainer(
                        context,
                        cubit.redProductImages,
                      )
                    else if(cubit.greenColorSelected==true)
                      firstImageContainer(
                        context,
                        cubit.greenProductImages,
                      )
                    else
                        firstImageContainer(
                          context,
                          cubit.blackProductImages,
                        ),
                    const SizedBox(
                      height: 50,
                    ),
                    if(cubit.blackColorSelected==true)
                      secondImageContainer(
                        context,
                        cubit.blackProductImages,
                      )
                    else if(cubit.redColorSelected==true)
                      secondImageContainer(
                        context,
                        cubit.redProductImages,
                      )
                    else if(cubit.greenColorSelected==true)
                        secondImageContainer(
                          context,
                          cubit.greenProductImages,
                        )
                      else
                        secondImageContainer(
                          context,
                          cubit.blackProductImages,
                        ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 20),
                          child: Row(
                            children: [
                              Text(
                                'Lightning T-Shirt',
                                style: TextStyle(fontSize: 22.5),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                child: Image(
                                    image: AssetImage(
                                      'assets/images/libra_logo.png'
                                    ),
                                  width: 55,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'EGP 295',
                            ),
                            Spacer(),
                            Text(
                              'Libra Sports',
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConditionalBuilder(
                            condition: cubit.blackColorSelected==true,
                            builder: (context)=>SizedBox(
                                height: 50,
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        cubit.blackColorSelected =  true;
                                        cubit.redColorSelected=false;
                                        cubit.greenColorSelected=false;
                                      });
                                    },
                                    child: Center(
                                        child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: cubit.productColor[0],
                                          ),
                                        )
                                    ),
                                  ),
                                )
                            ),
                            fallback: (context)=>SizedBox(
                                height: 50,
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        cubit.blackColorSelected =  true;
                                        cubit.redColorSelected=false;
                                        cubit.greenColorSelected=false;
                                      });
                                    },
                                    child: Center(
                                        child: CircleAvatar(
                                          radius: 11.5,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: cubit.productColor[0],
                                          ),
                                        )
                                    ),
                                  ),
                                )
                            ),
                        ),
                        const SizedBox(width: 5,),
                        ConditionalBuilder(
                            condition: cubit.redColorSelected==true,
                            builder: (context)=>SizedBox(
                                height: 50,
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        cubit.redColorSelected =  true;
                                        cubit.blackColorSelected =  false;
                                        cubit.greenColorSelected =  false;
                                      });
                                    },
                                    child: Center(
                                        child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: cubit.productColor[1],
                                          ),
                                        )
                                    ),
                                  ),
                                )
                            ),
                            fallback:(context)=>SizedBox(
                                height: 50,
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        cubit.redColorSelected =  true;
                                        cubit.blackColorSelected =  false;
                                        cubit.greenColorSelected =  false;
                                      });
                                    },
                                    child: Center(
                                        child: CircleAvatar(
                                          radius: 11.5,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: cubit.productColor[1],
                                          ),
                                        )
                                    ),
                                  ),
                                )
                            ),
                        ),
                        const SizedBox(width: 5,),
                        ConditionalBuilder(
                            condition: cubit.greenColorSelected==true,
                            builder: (context)=>SizedBox(
                                height: 50,
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        cubit.greenColorSelected =  true;
                                        cubit.redColorSelected =  false;
                                        cubit.blackColorSelected =  false;
                                      });
                                    },
                                    child: Center(
                                        child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: cubit.productColor[2],
                                          ),
                                        )
                                    ),
                                  ),
                                )
                            ),
                            fallback: (context)=>SizedBox(
                                height: 50,
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        cubit.greenColorSelected =  true;
                                        cubit.redColorSelected =  false;
                                        cubit.blackColorSelected =  false;
                                      });
                                    },
                                    child: Center(
                                        child: CircleAvatar(
                                          radius: 11.5,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: cubit.productColor[2],
                                          ),
                                        )
                                    ),
                                  ),
                                )
                            ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        Text('Select Size'),
                        Spacer(),
                        Text('Size Chart'),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        //0
                        InkWell(
                          onTap: (){
                            setState(() {
                              for(int i=0; i<=cubit.selectedProductSize.length; i++){
                                if(cubit.selectedProductSize[1]==true &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[1]= !cubit.selectedProductSize[1];
                                  cubit.selectedProductSize[0]= !cubit.selectedProductSize[0];
                                }
                                else if(cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==true &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[2]= !cubit.selectedProductSize[2];
                                  cubit.selectedProductSize[0]= !cubit.selectedProductSize[0];
                                }
                                else if(cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==true &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[3]= !cubit.selectedProductSize[3];
                                  cubit.selectedProductSize[0]= !cubit.selectedProductSize[0];
                                }
                                else if(cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==true
                                ){
                                  cubit.selectedProductSize[4]= !cubit.selectedProductSize[4];
                                  cubit.selectedProductSize[0]= !cubit.selectedProductSize[0];
                                }
                              }
                            });
                          },
                          child: Center(
                            child: Container(
                                height: height(context, 18),
                                decoration: BoxDecoration(
                                  color: cubit.selectedProductSize[0]?lightGreen:darkGrey,
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Text(
                                        cubit.productSizes[0],
                                        style: TextStyle(
                                          color: cubit.selectedProductSize[0]?black:lightGrey,
                                        ),
                                      ),
                                    )
                                )),
                          ),
                        ),
                        const SizedBox(width: 3.5,),
                        //1
                        InkWell(
                          onTap: (){
                            setState(() {
                              for(int i=0; i<=cubit.selectedProductSize.length; i++){
                                if(cubit.selectedProductSize[0]==true &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[0]= !cubit.selectedProductSize[0];
                                  cubit.selectedProductSize[1]= !cubit.selectedProductSize[1];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[2]==true &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[2]= !cubit.selectedProductSize[2];
                                  cubit.selectedProductSize[1]= !cubit.selectedProductSize[1];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==true &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[3]= !cubit.selectedProductSize[3];
                                  cubit.selectedProductSize[1]= !cubit.selectedProductSize[1];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==true
                                ){
                                  cubit.selectedProductSize[4]= !cubit.selectedProductSize[4];
                                  cubit.selectedProductSize[1]= !cubit.selectedProductSize[1];
                                }
                              }
                            });
                          },
                          child: Center(
                            child: Container(
                                height: height(context, 18),
                                decoration: BoxDecoration(
                                  color: cubit.selectedProductSize[1]?lightGreen:darkGrey,
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Text(
                                        cubit.productSizes[1],
                                        style: TextStyle(
                                          color: cubit.selectedProductSize[1]?black:lightGrey,
                                        ),
                                      ),
                                    )
                                )),
                          ),
                        ),
                        const SizedBox(width: 3.5,),
                        //2
                        InkWell(
                          onTap: (){
                            setState(() {
                              for(int i=0; i<=cubit.selectedProductSize.length; i++){
                                if(cubit.selectedProductSize[0]==true &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[0]= !cubit.selectedProductSize[0];
                                  cubit.selectedProductSize[2]= !cubit.selectedProductSize[2];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==true &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[1]= !cubit.selectedProductSize[1];
                                  cubit.selectedProductSize[2]= !cubit.selectedProductSize[2];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[3]==true &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[3]= !cubit.selectedProductSize[3];
                                  cubit.selectedProductSize[2]= !cubit.selectedProductSize[2];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[3]==false &&
                                    cubit.selectedProductSize[4]==true
                                ){
                                  cubit.selectedProductSize[4]= !cubit.selectedProductSize[4];
                                  cubit.selectedProductSize[2]= !cubit.selectedProductSize[2];
                                }
                              }
                            });
                          },
                          child: Center(
                            child: Container(
                                height: height(context, 18),
                                decoration: BoxDecoration(
                                  color: cubit.selectedProductSize[2]?lightGreen:darkGrey,
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Text(
                                        cubit.productSizes[2],
                                        style: TextStyle(
                                          color: cubit.selectedProductSize[2]?black:lightGrey,
                                        ),
                                      ),
                                    )
                                )),
                          ),
                        ),
                        const SizedBox(width: 3.5,),
                        //3
                        InkWell(
                          onTap: (){
                            setState(() {
                              for(int i=0; i<=cubit.selectedProductSize.length; i++){
                                if(cubit.selectedProductSize[0]==true &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[0]= !cubit.selectedProductSize[0];
                                  cubit.selectedProductSize[3]= !cubit.selectedProductSize[3];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==true &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[1]= !cubit.selectedProductSize[1];
                                  cubit.selectedProductSize[3]= !cubit.selectedProductSize[3];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==true &&
                                    cubit.selectedProductSize[4]==false
                                ){
                                  cubit.selectedProductSize[2]= !cubit.selectedProductSize[2];
                                  cubit.selectedProductSize[3]= !cubit.selectedProductSize[3];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[4]==true
                                ){
                                  cubit.selectedProductSize[4]= !cubit.selectedProductSize[4];
                                  cubit.selectedProductSize[3]= !cubit.selectedProductSize[3];
                                }
                              }
                            });
                          },
                          child: Center(
                            child: Container(
                                height: height(context, 18),
                                decoration: BoxDecoration(
                                  color: cubit.selectedProductSize[3]?lightGreen:darkGrey,
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Text(
                                        cubit.productSizes[3],
                                        style: TextStyle(
                                          color: cubit.selectedProductSize[3]?black:lightGrey,
                                        ),
                                      ),
                                    )
                                )),
                          ),
                        ),
                        const SizedBox(width: 3.5,),
                        //4
                        InkWell(
                          onTap: (){
                            setState(() {
                              for(int i=0; i<=cubit.selectedProductSize.length; i++){
                                if(cubit.selectedProductSize[0]==true &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==false
                                ){
                                  cubit.selectedProductSize[0]= !cubit.selectedProductSize[0];
                                  cubit.selectedProductSize[4]= !cubit.selectedProductSize[4];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==true &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==false
                                ){
                                  cubit.selectedProductSize[1]= !cubit.selectedProductSize[1];
                                  cubit.selectedProductSize[4]= !cubit.selectedProductSize[4];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==true &&
                                    cubit.selectedProductSize[3]==false
                                ){
                                  cubit.selectedProductSize[2]= !cubit.selectedProductSize[2];
                                  cubit.selectedProductSize[4]= !cubit.selectedProductSize[4];
                                }
                                else if(cubit.selectedProductSize[0]==false &&
                                    cubit.selectedProductSize[1]==false &&
                                    cubit.selectedProductSize[2]==false &&
                                    cubit.selectedProductSize[3]==true
                                ){
                                  cubit.selectedProductSize[3]= !cubit.selectedProductSize[3];
                                  cubit.selectedProductSize[4]= !cubit.selectedProductSize[4];
                                }
                              }
                            });
                          },
                          child: Center(
                            child: Container(
                                height: height(context, 18),
                                decoration: BoxDecoration(
                                  color: cubit.selectedProductSize[4]?lightGreen:darkGrey,
                                  borderRadius:
                                  BorderRadius.circular(12),
                                ),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Text(
                                        cubit.productSizes[4],
                                        style: TextStyle(
                                          color: cubit.selectedProductSize[4]?black:lightGrey,
                                        ),
                                      ),
                                    )
                                )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Select Material'),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: (){},
                      child:   Center(
                        child: Container(
                            width: width(context, 2.5),
                            height: height(context, 18),
                            decoration: BoxDecoration(
                              color: lightGreen,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                'nylon fabric',
                                style: TextStyle(color: black),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:  ExpansionTile(
                        backgroundColor: darkGrey,
                        collapsedBackgroundColor: darkGrey,
                        collapsedIconColor: white,
                        iconColor: white,
                        textColor: white,
                        expandedAlignment: Alignment.topLeft,
                        childrenPadding: const EdgeInsets.all(20),
                        title: const Text(
                          'Description',
                          style: TextStyle(
                              color: white,
                            fontSize: 18.5,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        children:  const [
                          Text(
                              "Move as swift as lightning with libra's ultra-light t-shirt with the perfect V=neck silhouette, Fast dry technology keeps you fresh throughout your workout by absoarbing moisture and drying within 30 minutes",
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Text('Quantity'),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: height(context, 20),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1, color: lightGrey)),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if(cubit.counter<=0){
                                      setState(() {
                                        cubit.counter=0;
                                        showToast(
                                            text: 'Quantity is reached 0',
                                            states: ToastStates.WARRNING
                                        );
                                      });
                                    }else{
                                      cubit.minusButton();
                                    }
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: lightGrey,
                                  )),
                              verticalDivider(),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '${cubit.counter}',
                                style: TextStyle(
                                  color: Colors.transparent,
                                  shadows: [
                                    Shadow(
                                      offset: const Offset(0, -3),
                                      color: lightGrey,
                                    )
                                  ],
                                  decoration: TextDecoration.underline,
                                  decorationColor: lightGrey,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              verticalDivider(),
                              IconButton(
                                  onPressed: () {
                                    cubit.plusButton();
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: lightGrey,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30,),
                    ConditionalBuilder(
                        condition: cubit.addedToCart,
                        builder: (context)=>  InkWell(
                          onTap: (){
                            setState(() {
                              cubit.addedToCart =!cubit.addedToCart;
                            });
                          },
                          child:  Container(
                              width: double.infinity,
                              height: height(context, 15.5),
                              decoration: BoxDecoration(
                                  color: lightGreen,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Center(
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      color: black
                                  ),
                                ),
                              )
                          ),
                        ),
                        fallback: (context)=>   Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Already in shopping cart',
                            ),
                            const SizedBox(height: 15,),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child:Container(
                                      width: width(context, 2),
                                      height: height(context, 16),
                                      decoration: BoxDecoration(
                                        color: lightGreen,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child:const Center(
                                        child: Text(
                                          'Continue Shopping',
                                          style: TextStyle(
                                              color: black
                                          ),
                                        ),
                                      )
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: (){},
                                  child:    Container(
                                      width: width(context, 2.7),
                                      height: height(context, 16),
                                      decoration: BoxDecoration(
                                        color: lightGreen,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child:const Center(
                                        child: Text(
                                          'Shopping Cart',
                                          style: TextStyle(
                                              color: black
                                          ),
                                        ),
                                      )
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
