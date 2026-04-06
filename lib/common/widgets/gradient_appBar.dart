import 'package:flutter/material.dart';
import 'package:learning_app/core/constants/app_gradients.dart';

class GradientAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  const GradientAppbar({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    final AppGradients _appGradients = AppGradients();
    return AppBar(
      title: Text(appBarTitle),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(0.1),

      shape: Border(
        bottom: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(gradient: _appGradients.primary),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
