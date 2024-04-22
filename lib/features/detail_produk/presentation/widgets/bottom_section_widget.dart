import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomSectionWidgets extends StatelessWidget {
  const BottomSectionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 8.h,
      padding: EdgeInsets.only(left: 3.w, right: 3.w),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 1,
            offset: const Offset(0, 1))
      ]),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 15.w,
            height: 5.5.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8)),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(8),
                child: Center(
                  child: Image.asset(
                    "assets/images/ic_chat.png",
                    color: Colors.black,
                    width: 7.w,
                    height: 7.w,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 5.5.h,
            width: 40.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8)),
            child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(8),
                    child: Center(
                        child: Text(
                      "Beli Langsung",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp),
                    )))),
          ),
          Container(
            height: 5.5.h,
            width: 35.w,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(8)),
            child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 4.w,
                          color: Colors.white,
                        ),
                        Text(
                          "Keranjang",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp),
                        ),
                      ],
                    ))),
          )
        ],
      )),
    );
  }
}
