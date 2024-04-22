import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/product_card_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PilihanLainnyaWidget extends StatelessWidget {
  const PilihanLainnyaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 1.h),
          width: double.infinity,
          padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pilihan Lainnya Untukmu",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w700)),
                  InkWell(
                    onTap: () {},
                    child: Text("Lihat Semua",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainColor)),
                  )
                ],
              ),
            ),
          ]),
        ),
        const ProductCard()
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 37.h,
      child: ListView.builder(
        itemCount: 4,
        padding: EdgeInsets.only(
          left: 3.w,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String imageRoute = "";
          if ((index + 1) % 2 != 0) {
            imageRoute = "assets/images/produk_1.png";
          } else {
            imageRoute = "assets/images/produk_2.png";
          }
          return ProductCardWidget(imageRoute: imageRoute);
        },
      ),
    );
  }
}
