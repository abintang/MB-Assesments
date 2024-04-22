import 'package:flutter/material.dart';
import 'package:master_bagasi_assessment/core/constants/colors.dart';
import 'package:master_bagasi_assessment/features/detail_produk/presentation/page/detail_produk_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            theme: ThemeData(
                scaffoldBackgroundColor: AppColors.backgroundColor,
                fontFamily: 'NunitoSans'),
            debugShowCheckedModeBanner: false,
            home: const DetailProdukPage());
      },
    );
  }
}
