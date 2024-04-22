import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/appbar_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/bottom_section_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/deskripsi_product_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/diskusi_product_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/kategori_lainnya_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/pilihan_lainnya_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/product_detail_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/tentang_brand_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailProdukPage extends StatelessWidget {
  const DetailProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppbarWidget(),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.fromLTRB(3.w, 1.5.h, 3.w, 1.5.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/detail_2.png',
                width: double.infinity,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 1.h),
            width: double.infinity,
            padding: EdgeInsets.only(top: 0.5.h),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.w, right: 3.w),
                  child: Text(
                      "Dapur Mami Kikas - Paru Pedas Aceh dan Ikan Kayu Aceh",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.5.h),
                  height: 0.5.w,
                  width: double.infinity,
                  color: AppColors.backgroundColor,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 3.w),
                      width: 45.w,
                      child: Text(
                        "Rp178.200",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 19.sp),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 0.5.w,
                      color: AppColors.backgroundColor,
                    ),
                    SizedBox(
                      width: 20.w,
                      child: Center(
                        child: Text(
                          "0.35 Kg",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 0.5.w,
                      color: AppColors.backgroundColor,
                    ),
                    SizedBox(
                      width: 15.w,
                      child: Center(
                        child: ClipOval(
                          child: Material(
                            color: AppColors.backgroundColor,
                            child: InkWell(
                              onTap: () {},
                              child: SizedBox(
                                  width: 10.w,
                                  height: 10.w,
                                  child: const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 0.5.w,
                      color: AppColors.backgroundColor,
                    ),
                    SizedBox(
                      width: 15.w,
                      child: Center(
                        child: ClipOval(
                          child: Material(
                            color: AppColors.backgroundColor,
                            child: InkWell(
                              onTap: () {},
                              child: SizedBox(
                                  width: 10.w,
                                  height: 10.w,
                                  child: const Icon(
                                    Icons.share,
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
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
                child: Text("Select Variant:",
                    style: TextStyle(
                        fontSize: 16.sp, fontWeight: FontWeight.w700)),
              ),
              LimitedBox(
                maxHeight: 5.h,
                child: ListView.builder(
                  itemCount: 3,
                  padding: EdgeInsets.only(left: 3.w),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    bool state = false;
                    if (index == 0) {
                      state = true;
                    }
                    List<String> variants = [
                      'Bundling Paru Pedas & Ikan Kayu Aceh',
                      'Paru Pedas Aceh',
                      'Ikan Kayu Aceh'
                    ];
                    return Container(
                      margin: EdgeInsets.only(
                          right: 2.w, top: 0.5.h, bottom: 0.5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 1),
                          color: (state == true) ? Colors.black : Colors.white),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {},
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.w, right: 2.w),
                              child: Text(
                                variants[index],
                                style: TextStyle(
                                    color: (state == true)
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ]),
          ),
          const ProductDetailWidget(),
          const DeskripsiProductWidget(),
          const KategoriLainnyaWidget(),
          const TentangBrandWidget(),
          const KategoriLainnyaWidget(),
          const DiskusiProductWidget(),
          const PilihanLainnyaWidget()
        ]),
      ),
      bottomNavigationBar: const BottomSectionWidgets(),
    );
  }
}
