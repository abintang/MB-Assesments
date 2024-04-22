import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(3.w, 30, 3.w, 10),
      color: AppColors.blackColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 67.w,
            decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 6.w,
                      )),
                ),
                Container(
                  color: const Color(0xFF909090),
                  width: 0.5.w,
                  margin: EdgeInsets.only(right: 1.w),
                ),
                SizedBox(
                  width: 42.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_sharp,
                        size: 6.w,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Expanded(
                          child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.5.sp,
                            decorationThickness: 0),
                        decoration: InputDecoration(
                          hintText: "Cari di Masterbagasi",
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.5.sp,
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 1.5.w),
                  width: 12.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {},
                      child: Center(
                        child: Image.asset(
                          'assets/images/ic_transaction.png',
                          width: 8.w,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 1.5.w),
            width: 12.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Image.asset(
                'assets/images/ic_cart.png',
                width: 8.w,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 1.5.w),
            width: 12.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Image.asset(
                'assets/images/ic_chat.png',
                width: 8.w,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(7.5.h);
}
