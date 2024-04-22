import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({super.key});

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
          child: Text("Product Detail",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700)),
        ),
        const ProductDetailComponents(
            typeComponent: "Sertifikasi", value: "Sertifikasi"),
        const ProductDetailComponents(
            typeComponent: "Kategori", value: "Sertifikasi"),
        const ProductDetailComponents(
            typeComponent: "Provinsi", value: "Nanggroe Aceh Darusallam"),
        const ProductDetailComponents(
            typeComponent: "Brand", value: "Dapur Mami Kikas"),
        const ProductDetailComponents(typeComponent: "SKU", value: "A1532"),
        const ProductDetailComponents(
            typeComponent: "Sustensi", value: "2 pcs x 125 gr"),
      ]),
    );
  }
}

class ProductDetailComponents extends StatelessWidget {
  final String typeComponent;
  final String value;
  const ProductDetailComponents(
      {super.key, required this.typeComponent, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.h, left: 3.w, right: 3.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            typeComponent,
            style: TextStyle(fontSize: 16.sp, color: AppColors.fontColor),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: TextStyle(fontSize: 16.sp, color: AppColors.fontColor),
              ),
              Container(
                margin: EdgeInsets.only(top: 0.5.w, bottom: 0.5.w),
                width: 60.w,
                height: 0.5.w,
                color: AppColors.backgroundColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
