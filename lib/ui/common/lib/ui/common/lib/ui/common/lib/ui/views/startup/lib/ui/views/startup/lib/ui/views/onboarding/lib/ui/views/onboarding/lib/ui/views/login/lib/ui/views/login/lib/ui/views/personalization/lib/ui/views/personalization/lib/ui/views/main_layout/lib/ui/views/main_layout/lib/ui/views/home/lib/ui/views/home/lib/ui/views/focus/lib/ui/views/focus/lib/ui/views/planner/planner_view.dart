import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'planner_viewmodel.dart';

class PlannerView extends StackedView<PlannerViewModel> {
  const PlannerView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PlannerViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Planner View\n\n// TODO: Build time-blocking UI, task lists, etc.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  PlannerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlannerViewModel();
}
