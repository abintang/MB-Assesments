import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductCardWidget extends StatelessWidget {
  final String imageRoute;
  const ProductCardWidget({super.key, required this.imageRoute});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.h,
      width: 40.w,
      margin: EdgeInsets.only(right: 2.w, bottom: 1.h),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageRoute,
            width: 40.w,
            fit: BoxFit.fitWidth,
          ),
          Container(
            height: 0.5.w,
            color: AppColors.backgroundColor,
          ),
          Container(
            height: 5.h,
            margin: EdgeInsets.only(left: 2.w, right: 2.w),
            child: Text(
              "Sariwangi - Teh Celup Asli",
              style: TextStyle(color: Colors.black, fontSize: 15.sp),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 23.w,
                margin: EdgeInsets.only(left: 2.w),
                child: Text(
                  "Rp135.000",
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 15.sp),
                ),
              ),
              Container(
                height: 3.h,
                width: 0.5.w,
                color: AppColors.backgroundColor,
              ),
              Container(
                margin: EdgeInsets.only(right: 2.w),
                child: Text(
                  "300g",
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 15.sp),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: Text(
              "Terjual 1260",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: const Color(0xFF909090)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, top: 0.5.h, right: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipOval(
                  child: Material(
                    color: AppColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                          width: 8.w,
                          height: 8.w,
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ),
                Container(
                  width: 25.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.mainColor, width: 1)),
                  child: Material(
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {},
                      splashColor: AppColors.mainColor.withOpacity(0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            size: 3.w,
                            color: AppColors.mainColor,
                          ),
                          Text(
                            "Keranjang",
                            style: TextStyle(
                                color: AppColors.mainColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
