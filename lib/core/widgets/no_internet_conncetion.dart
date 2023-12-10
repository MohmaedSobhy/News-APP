import 'package:flutter/material.dart';

class NoInternetConnectionWidget extends StatelessWidget {
  const NoInternetConnectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "images/no-internet.png",
          height: MediaQuery.sizeOf(context).height * 0.2,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Check Your Network",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium,
        )
      ],
    );
  }
}
