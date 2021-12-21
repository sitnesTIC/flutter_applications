import 'package:flutter/material.dart';

import 'package:flutter_applications/router/app_routes.dart';
import 'package:flutter_applications/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components de Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    Navigator.pushNamed(context, menuOptions[index].route);
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const Listview1Screen(),
                    // );
                    // Navigator.push(context, route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
