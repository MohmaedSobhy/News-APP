import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            "BreakingNews",
            style: GoogleFonts.abrilFatface().copyWith(
              fontSize: 20.sp,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.10,
        ),
        ListTile(
          title: Text('Economy'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Sport'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Entertaniment'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Health'),
          onTap: () {},
        ),
        ListTile(
          title: Text("Business"),
          onTap: () {},
        )
      ],
    );
  }
}
