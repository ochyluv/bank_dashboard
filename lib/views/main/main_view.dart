import 'package:bank_dashboard/responsive.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/widgets/side_menu.dart';
import 'package:bank_dashboard/views/dashboard/dashboard_view.dart';
import 'package:bank_dashboard/views/main/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          key: model.scaffoldKey,
          drawer: const SideMenu(),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  child: SideMenu(),
                ),
              horizontalSpaceRegular,
              const Expanded(
                flex: 5,
                child: DashBoardView(),
              ),
              horizontalSpaceSmall,
            ],
          ),
        );
      },
      viewModelBuilder: () => MainViewModel(),
    );
  }
}
