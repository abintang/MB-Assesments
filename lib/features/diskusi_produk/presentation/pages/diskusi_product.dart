import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/appbar_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/bottom_section_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/diskusi_product_widget.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/widgets/pilihan_lainnya_widget.dart';
import 'package:master_bagasi_assessment/features/diskusi_produk/presentation/widgets/diskusi_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DiskusiProductPage extends StatelessWidget {
  const DiskusiProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
              child: const DiskusiProductWidget(),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 1.h),
              child: Column(children: [
                const DiskusiWidget(
                  sizeChatSection: 75,
                  sizeCommentSection: 55,
                  name: 'Dandi Rizaldi',
                  comments: 'Kirim Paru ke UK aman kak?',
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 1.h),
                  margin: EdgeInsets.only(left: 9.w, top: 1.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const DiskusiWidget(
                    sizeChatSection: 60,
                    sizeCommentSection: 45,
                    name: 'Yolla Viana',
                    comments:
                        'waktu itu aku aman kak, karena dari masterbagasinya dikasih packaging ulang kak, semacam bundling gitu kak.',
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 1.h),
                  margin: EdgeInsets.only(left: 9.w, top: 1.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const DiskusiWidget(
                    sizeChatSection: 60,
                    sizeCommentSection: 45,
                    name: 'Yolla Viana',
                    comments:
                        'waktu itu aku aman kak, karena dari masterbagasinya dikasih packaging ulang kak, semacam bundling gitu kak.',
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(3.w, 0.5.h, 3.w, 0.5.h),
                  margin: EdgeInsets.only(left: 9.w, top: 1.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/profil.png",
                          width: 14.w,
                          height: 14.w,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              decorationThickness: 0),
                          decoration: InputDecoration(
                            hintText: "Isi komentar disini",
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ))
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 1.h,
            ),
            const PilihanLainnyaWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomSectionWidgets(),
    );
  }
}
