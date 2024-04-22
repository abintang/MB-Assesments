import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DiskusiWidget extends StatelessWidget {
  final double sizeChatSection;
  final double sizeCommentSection;
  final String name;
  final String comments;
  const DiskusiWidget(
      {super.key,
      required this.sizeChatSection,
      required this.sizeCommentSection,
      required this.name,
      required this.comments});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipOval(
          child: Image.asset(
            "assets/images/profil.png",
            width: 14.w,
            height: 14.w,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 0.5.h),
          width: sizeChatSection.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/uk.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "United Kingdom",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.5.h),
                    child: Text(
                      name,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    width: sizeCommentSection.w,
                    padding: EdgeInsets.only(top: 0.5.h),
                    child: Text(
                      comments,
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              Text(
                "Jun 2024",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
