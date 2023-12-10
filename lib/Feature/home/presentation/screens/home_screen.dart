import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:news_app/Feature/home/presentation/views/drawer_view.dart';
import 'package:news_app/Feature/home/presentation/views/theme_button.dart';
import 'package:news_app/core/localization/app_string.dart';
import 'package:news_app/core/widgets/no_internet_conncetion.dart';
import '../views/custome_title_app_bar.dart';
import '../views/home_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerView(),
      ),
      appBar: AppBar(
        title: CustomeTitleAppBarView(
          title: AppString.appName,
        ),
        actions: const [
          IconThemeButton(),
        ],
      ),
      body: OfflineBuilder(
        connectivityBuilder: (BuildContext context,
            ConnectivityResult connectivity, Widget child) {
          return (connectivity != ConnectivityResult.none)
              ? const HomeViewBody()
              : const NoInternetConnectionWidget();
        },
        child: const NoInternetConnectionWidget(),
      ),
    );
  }
}
