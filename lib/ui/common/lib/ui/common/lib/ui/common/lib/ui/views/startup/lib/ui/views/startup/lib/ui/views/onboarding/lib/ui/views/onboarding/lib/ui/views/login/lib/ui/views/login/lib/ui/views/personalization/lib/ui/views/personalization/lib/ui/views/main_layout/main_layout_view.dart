import 'package:dopamind/ui/common/app_colors.dart';
import 'package:dopamind/ui/views/focus/focus_view.dart';
import 'package:dopamind/ui/views/goals/goals_view.dart';
import 'package:dopamind/ui/views/home/home_view.dart';
import 'package:dopamind/ui/views/main_layout/main_layout_viewmodel.dart';
import 'package:dopamind/ui/views/music/music_view.dart';
import 'package:dopamind/ui/views/planner/planner_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainLayoutView extends StatelessWidget {
  const MainLayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainLayoutViewModel>.reactive(
      viewModelBuilder: () => MainLayoutViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: getViewForIndex(viewModel.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: viewModel.currentIndex,
          onTap: viewModel.setIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.center_focus_strong), label: 'Focus'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Planner'),
            BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Music'),
            BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Goals'),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black.withOpacity(0.8),
          selectedItemColor: kcPrimaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
        ),
      ),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const FocusView();
      case 2:
        return const PlannerView();
      case 3:
        return const MusicView();
      case 4:
        return const GoalsView();
      default:
        return const HomeView();
    }
  }
}
