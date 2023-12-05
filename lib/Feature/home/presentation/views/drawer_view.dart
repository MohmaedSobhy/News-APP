import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/core/localization/app_string.dart';
import 'package:sizer/sizer.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.05,
        ),
        ListTile(
          title: Text(
            AppString.appName,
            style: GoogleFonts.abrilFatface().copyWith(
              fontSize: 20.sp,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.10,
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: AppString.newsCategories.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0.0,
                child: ListTile(
                  title: Text(
                    AppString.newsCategories[index],
                    style: GoogleFonts.abyssinicaSil().copyWith(
                      fontSize: 12.sp,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
