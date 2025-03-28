import 'package:flutter/widgets.dart';
import 'package:frontend/core/constants/ui.dart';
import 'package:frontend/core/theme/app_colors.dart';
import 'package:frontend/bottom_nav/widgets/app_navigation_bar_item.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final double height;

  // final void Function(int) onDestinationChanged;
  const AppNavigationBar({
    super.key,
    this.height = 70,
    // required this.onDestinationChanged,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: height,
      color: AppColors.darkNavy,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      // ),
      child: Row(
        children: UiConstants.navBarData
            .map(
              (navBarItemData) => AppNavigationBarItem(
                index: navBarItemData["index"] as int,
                icon: Icon(navBarItemData["icon"] as IconData,
                    color: AppColors.white //primary,
                    ),
                selectedIcon: Icon(navBarItemData["selected_icon"] as IconData,
                    color: AppColors.teal //primary,
                    ),
                label: navBarItemData["label"] as String,
                labelColor: AppColors.white,
                labelSelectedColor: AppColors.teal,
                navigationShell: navigationShell,
              ),
            )
            .toList(),
      ),
    );
  }
}
