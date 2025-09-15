import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'goals_viewmodel.dart';

class GoalsView extends StackedView<GoalsViewModel> {
  const GoalsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GoalsViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Goals View\n\n// TODO: Build goal tracking UI, progress charts, etc.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  GoalsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalsViewModel();
}
