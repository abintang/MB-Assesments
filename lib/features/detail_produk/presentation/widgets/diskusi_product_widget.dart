import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:master_bagasi_assessment/features/diskusi_produk/presentation/pages/diskusi_product.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DiskusiProductWidget extends StatelessWidget {
  const DiskusiProductWidget({super.key});

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
          child: Text("Diskusi Product",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700)),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 3.w, right: 3.w, top: 1.h, bottom: 1.h),
          child: Text("Ingin bertanya mengenai produk ini dalam forum diskusi?",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500)),
        ),
        Container(
          margin: EdgeInsets.only(left: 3.w, right: 3.w),
          width: double.infinity,
          height: 5.h,
          decoration: BoxDecoration(
              color: AppColors.blackColor,
              borderRadius: BorderRadius.circular(5)),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DiskusiProductPage()));
              },
              borderRadius: BorderRadius.circular(5),
              child: Center(
                child: Text(
                  "Tulis Pertanyan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
