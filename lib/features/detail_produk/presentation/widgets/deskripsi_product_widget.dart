import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DeskripsiProductWidget extends StatelessWidget {
  const DeskripsiProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.h),
      width: double.infinity,
      padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(left: 3.w, right: 3.w),
          child: Text("Deskripsi Product",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700)),
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 1.h),
          child: Text(
            "Olahan Paru khas Aceh yang pedas membuat selera makan meningkat, bisa mengobati rasa kangen akan masakan Nusantara.\n\nOlahan Ikan Kayu khas Aceh yang pedas membuat selera makan meningkat, bisa mengobati rasa kangen akan masakan Nusantara.\n\nterdiri dari 1 Paru Pedas Aceh Spicy 250 gram 1 Ikan Kayu Aceh Spicy 250 gram",
            style: TextStyle(fontSize: 16.sp, color: AppColors.fontColor),
          ),
        )
      ]),
    );
  }
}
