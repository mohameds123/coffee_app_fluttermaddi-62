import 'package:flutter/material.dart';

import '../core/colors_manager.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({super.key});

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  bool isS = true;
  bool isM = false;
  bool isL = false;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Size',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorsManager.blackTextColor
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      isS = true;
                      isM = false;
                      isL = false;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                          color: isS == true ? ColorsManager.lightBrown :Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: isS == true ? ColorsManager.brown : ColorsManager.lightGrey,
                              width: 1.5
                          )
                      ),
                      child: Center(child: Text('S',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isS == true ? ColorsManager.brown:ColorsManager.blackTextColor,
                            fontSize: 14
                        ),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      isM = true;
                      isS = false;
                      isL = false;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                          color: isM == true ? ColorsManager.lightBrown : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: isM == true ? ColorsManager.brown : ColorsManager.lightGrey,
                              width: 1.5
                          )
                      ),
                      child: Center(child: Text('M',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isM == true ? ColorsManager.brown:ColorsManager.blackTextColor,
                            fontSize: 14
                        ),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      isL = true;
                      isS = false;
                      isM = false;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                          color: isL == true ? ColorsManager.lightBrown : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: isL == true ? ColorsManager.brown : ColorsManager.lightGrey,
                              width: 1.5
                          )
                      ),
                      child: Center(child: Text('L',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isL == true ? ColorsManager.brown:ColorsManager.blackTextColor,
                            fontSize: 14
                        ),
                      )),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: 12,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: ColorsManager.lightGrey,
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text('Price',
                  style: TextStyle(
                    color: ColorsManager.greyTextColor,
                    fontSize: 14,
                  fontWeight: FontWeight.w400
                  ),
                  ),
                  Text(isS == true ?'\$4.5' : isM == true? "\$7.6" : "\$9.0",
                    style: TextStyle(
                        color: ColorsManager.brown,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                  ),

                ],
              ),
              Spacer(),
              Container(
                width: 217,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: ColorsManager.brown
                ),
                child: Center(
                  child: Text('Buy Now',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16
                      ),
                      ),
                ) ,
              ),

            ],
          ),
        ),


      ],
    );
  }
}
