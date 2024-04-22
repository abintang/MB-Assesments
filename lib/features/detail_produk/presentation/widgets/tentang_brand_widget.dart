import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TentangBrandWidget extends StatelessWidget {
  const TentangBrandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/banner_brand.png",
          width: double.infinity,
          height: 25.h,
          fit: BoxFit.fitWidth,
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
          padding:
              EdgeInsets.only(left: 3.w, right: 3.w, top: 1.h, bottom: 1.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Tentang Brand",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(top: 1.h, bottom: 2.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/brand_ava.png",
                        width: 20.w,
                        height: 20.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 2.w),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 45.w,
                            child: Text(
                              "DAPUR MAMI KIKAS",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            width: 45.w,
                            child: Text(
                              "Siap Saji Ala Kaki Lima",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 10.w,
                      height: 10.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.blackColor, width: 0.5.w),
                          borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: const Center(
                            child: Icon(Icons.add),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: Text(
                  "Dapur Mami Kikas adalah dapur miliknya mamki Kikas, Masa engga tau? dia punya olahan aneka lauk siap saji yang almost terbuat dari daging, langsung sikat aja brayyy",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text("Selengkapnya...",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainColor)),
              )
            ],
          ),
        )
      ],
    );
  }
}
